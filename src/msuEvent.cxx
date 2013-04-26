#include "msuEvent.h"


msuEvent::msuEvent() {
	fData = new msuEventData();
}
void msuEvent::Clear()
{
	
}
void msuEvent::ReadEvent(msuClassicBuffer *buffer) {
	int datum=0;
	int type;
	int slot;
	bool startPrint = false;

	int eventLength = buffer->GetWord();
	
	fData->Clear();

	if (startPrint) {
		printf ("New Event length:%d\n",eventLength);
		fflush(stdout);
	}
	for (int i=0;i<eventLength / 2;i++) {
	//while ((datum = buffer->GetLongWord()) != 0xFFFFFFFF) {
		datum = buffer->GetLongWord();
		type = (datum & ALLH_TYPEMASK) >> ALLH_TYPESHIFT;
		slot = (datum & ALLH_GEOMASK) >> ALLH_GEOSHIFT;
		if (startPrint) {
			printf ("0x%08X type: %d slot: %d ",datum,type,slot);
			fflush(stdout);
		}

		if (type == DATA) {
	
			int channel = (datum & DATAH_CHANMASK) >> DATAH_CHANSHIFT;
			int value   = (datum & DATAL_DATAMASK);
			bool overflow = (datum & DATAL_OVBIT) != 0;
			bool underflow= (datum & DATAL_UNBIT) != 0;
			bool valid    = (datum& DATAL_VBIT)  != 0;
			if (startPrint) {
				printf("ch: %d value: %d overflow:%d underflow:%d valid:%d",channel,value,overflow,underflow,valid);
				fflush(stdout);
			}
			

//			printf ("slot: %d channel: %d value %d\n",slot,channel,value);
			if (!overflow && !underflow) {
				//Write DATA here
				//ADC slot == 14
				if (slot == 14) { 

					if (channel > 31) {
						fprintf(stderr,"\nERROR: Channel %d invalid!\n",channel);
						fData->Clear();
						return;
					}

					if (channel >= 0 && channel < 32)
						fData->slot14[channel] = value;

					if (channel >= 0 && channel < 29)
						fData->siDet[channel] = value;
				}
				//TDC slot == 14
				/*
				else if (slot == 14) {
					if (channel > 31) {
						fprintf(stderr,"\nERROR: Channel %d invalid!\n",channel);
						fData->Clear();
						return;
					}

					fData->slot16[channel] = value;

				}
				*/
				/*else { 
					fprintf(stderr,"ERROR: Unknown slot %d\n",slot);
					fprintf (stderr,"0x%08X type: %d slot: %d ",datum,type,slot);
					fprintf(stderr,"ch: %d value: %d overflow:%d underflow:%d valid:%d\n",channel,value,overflow,underflow,valid);
					startPrint = true;
				}*/
			}
		}
		if (startPrint) {
			printf("\n");
			fflush(stdout);
		}
	}
	//buffer->GetWord();
	//buffer->GetLongWord();
}

msuEventData *msuEvent::GetEventData() 
{
	return fData;
}
