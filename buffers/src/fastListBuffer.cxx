#include "fastListBuffer.h"

fastListBuffer::fastListBuffer(int bufferSize, int bufferHeaderSize, int wordSize) :
	mainBuffer(bufferHeaderSize, bufferSize, wordSize),
	headerRead(false),
	numActiveADCs(0)
{

}

fastListBuffer::~fastListBuffer() 
{

}

void fastListBuffer::InitializeStorageManager() {
	if (GetStorageManager()) {
		GetStorageManager()->CreateTree("data");
		GetStorageManager()->CreateBranch("data","adc",adcValues.data(),"adc[16]/s");
	}
}

int fastListBuffer::ReadNextBuffer() 
{
	Clear();
	if (!fFile.good()) {
		fflush(stdout);
		printf("ERROR: File not good.\n");
		return -1;
	}

	if (!headerRead) {
		fBufferType = RUN_BEGIN;
		return 1;
	}

	//FAST list Buffer does not track buffer number, we iterate it manually.
	fBufferNumber++;

	fBufferBeginPos = GetFilePosition();

	//Specify that the buffer is big enough for a word.
	SetBufferSize(GetWordSize());
	//The fast list buffer has buffers exactly the size of the event.
	//Read the first word which should help indicate the size.
	fFile.read(&fBuffer[0], GetWordSize());
	//Check that we got the correct number of bytes.
	if (fFile.gcount() != GetWordSize()) {
		if (fFile.gcount() !=0 )fprintf(stderr,"ERROR: Read %ld bytes expected %u!\n",fFile.gcount(),GetWordSize());
		return 0;
	}
	//Specify the size of the readable buffer.
	SetNumOfBytes(GetWordSize());

	UInt_t datum = GetWord();
	//Syncronization mark
	if (datum == 0xFFFFFFFF) {
		fBufferType = SYNC_MARK;
		return 1; 
	}
	else if ((datum >> 16 & 0x4000) == 0) {
		fBufferType = DATA;	

		//Now we determine how many ADCs were triggered
		for (int adc = 0; adc < numActiveADCs; adc++) {
			char adcTriggered = (datum >> adc) & 0x1;
			if (((datum >> adc) & 0x1) == 1) 
				triggeredADCs.push_back(adc);
		}

		//Abort if the number of triggered ADCs is less than 1
		if (triggeredADCs.size() < 1) {
			fprintf(stderr,"ERROR: ADC Data event with no triggered ADCs! %#10X\n",datum);
			return 0;
		}

		//Prepare the buffer for the current event.
		//Each triggered ADC writes two bytes.
		UInt_t numBytes = 2 * triggeredADCs.size() + 4;
		//Events are packaged to fit into 32 bit words so we have to add space for padding
		if (triggeredADCs.size() % 2 == 1) numBytes += 2;
		SetBufferSize(numBytes);

		//Read the remaining buffer, besides the one word we have read placing
		// them into the buffer after the first word.
		fFile.read(&fBuffer[GetWordSize()], GetBufferSizeBytes() - GetWordSize());
		//Check that we read the correct numebr of bytes.
		if (fFile.gcount() != GetBufferSizeBytes() - GetWordSize()) {
			//We only complain if we read an unexpected number of bytes.
			if (fFile.gcount() !=0 ) {
				fflush(stdout);
				fprintf(stderr,"ERROR: Read %ld bytes expected %u!\n",fFile.gcount(),GetBufferSize());
			}
			return 0;
		}

		//Number of bytes is equal to the size of the buffer.
		SetNumOfBytes(GetBufferSizeBytes());

		//No information about number of events in header we assume there is
		// at least one.
		fNumOfEvents = 1;
		fEventNumber = 0;

		return GetNumOfWords();
	}
	else if ((datum >> 16 & 0x4000) != 0) {
		fBufferType = TIME;	
		return 1;
	}

	return 1;

}

void fastListBuffer::UnpackBuffer(bool verbose) {
	switch (fBufferType) {
		case DATA:
			ReadEvent(verbose);
			break;
		case TIME:
			if (verbose) printf("\tTIME STAMP\n");
			break;
		case RUN_BEGIN:
			ReadRunBegin(verbose);
			break;
		case SYNC_MARK:
			if (verbose) printf("\tSYNC MARK\n");
			break;
		default:
			printf("ERROR: Unknown buffer type!\n");
	}
}

int fastListBuffer::ReadEvent(bool verbose) {
	unsigned int eventStartPos = GetBufferPosition();
	if (eventStartPos >= GetNumOfWords()) {
		fflush(stdout);
		fprintf(stderr,"WARNING: Attempted to read event after reaching end of buffer!\n");
		return -1;
	}

	if (verbose) {
		printf ("\nData Event %llu:\n",fEventNumber);
	}
	
	UInt_t datum;
	for (int trigger = 0; trigger < triggeredADCs.size(); trigger++) {
		UShort_t adc = triggeredADCs.at(trigger);
		if (trigger % 2 == 0) {
			datum = GetWord();
			if (verbose) printf("\t%#010X",datum);
			adcValues[adc] = (datum >> 16) & 0xFFFF;
		}
		else {
			adcValues[adc] = datum & 0xFFFF;
			if (verbose) printf("\t%*c",10,' ');
		}

		if (verbose) printf(" ADC %d value: %u\n",adc,adcValues[adc]);
	}

	if (GetStorageManager()) GetStorageManager()->Fill("data");
/*
	//Loop over each module
	int headerSize = 2;
	for(unsigned int module=0;module<fModules.size();module++) {

		//Read out the current module
		fModules[module]->ReadEvent(this,verbose);

	}
*/

	fEventNumber++;

	return GetBufferPosition() - eventStartPos;

}

bool fastListBuffer::IsDataType() {
	return (fBufferType == DATA);
}
bool fastListBuffer::IsRunBegin() {
	return (fBufferType == RUN_BEGIN);
}

void fastListBuffer::ReadRunBegin(bool verbose) {
	std::string line;

	if (verbose) printf("\n");
	int adcNum = -1;
	do {
		line = GetLine();
		line.erase(line.find_last_not_of(" \r\n")+1);

		int pos;

		//Check if we have an equals sign
		// This indicates that we have a key value line.
		if ((pos = line.find("=")) != std::string::npos) {
			//Extract key and value
			std::string key = line.substr(0,pos);
			std::string value = line.substr(pos+1);

			if (verbose) {
				int numSpaces = 20 - key.length() - value.length(); 
				if (numSpaces < 0 ) numSpaces = 1;
				printf("\tkey[%s]='%s'%*c",key.c_str(),value.c_str(),numSpaces,' ');
			}
	
			//We found an active ADC
			if (key == "active" && std::stoi(value) > 0) numActiveADCs++;
		}
		//We found the header for an ADC block
		else if ((pos = line.find("[ADC")) != std::string::npos) {
			adcNum = std::stoi(line.substr(pos+4,line.find("]")-pos-4).c_str());
			if (verbose) printf("\n\tFound ADC %2d%*c",adcNum,16,' ');
		}
		else if (verbose) printf("\t");

		if (verbose) printf("\"%s\"\n",line.c_str());


	} while(line.find("[LISTDATA]") == std::string::npos);

	headerRead = true;
}

void fastListBuffer::Clear() {
	mainBuffer::Clear();
	triggeredADCs.clear();
	adcValues.fill(0);
}
