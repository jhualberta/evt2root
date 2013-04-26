# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/cmake-2.8.5/bin/cmake

# The command to remove a file.
RM = /afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/cmake-2.8.5/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/cmake-2.8.5/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /afs/crc.nd.edu/user/s/spectro/evt2root

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /afs/crc.nd.edu/user/s/spectro/evt2root/build

# Include any dependencies generated for this target.
include MSUEvent/CMakeFiles/MSUEvent.dir/depend.make

# Include the progress variables for this target.
include MSUEvent/CMakeFiles/MSUEvent.dir/progress.make

# Include the compile flags for this target's objects.
include MSUEvent/CMakeFiles/MSUEvent.dir/flags.make

MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o: MSUEvent/CMakeFiles/MSUEvent.dir/flags.make
MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o: ../MSUEvent/msuEventData.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/crc.nd.edu/user/s/spectro/evt2root/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MSUEvent.dir/msuEventData.cxx.o -c /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuEventData.cxx

MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MSUEvent.dir/msuEventData.cxx.i"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuEventData.cxx > CMakeFiles/MSUEvent.dir/msuEventData.cxx.i

MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MSUEvent.dir/msuEventData.cxx.s"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuEventData.cxx -o CMakeFiles/MSUEvent.dir/msuEventData.cxx.s

MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.requires:
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.requires

MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.provides: MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.requires
	$(MAKE) -f MSUEvent/CMakeFiles/MSUEvent.dir/build.make MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.provides.build
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.provides

MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.provides.build: MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o

MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o: MSUEvent/CMakeFiles/MSUEvent.dir/flags.make
MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o: ../MSUEvent/msuRingScalerData.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/crc.nd.edu/user/s/spectro/evt2root/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o -c /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuRingScalerData.cxx

MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.i"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuRingScalerData.cxx > CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.i

MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.s"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuRingScalerData.cxx -o CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.s

MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.requires:
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.requires

MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.provides: MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.requires
	$(MAKE) -f MSUEvent/CMakeFiles/MSUEvent.dir/build.make MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.provides.build
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.provides

MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.provides.build: MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o

MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o: MSUEvent/CMakeFiles/MSUEvent.dir/flags.make
MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o: ../MSUEvent/msuScalerData.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/crc.nd.edu/user/s/spectro/evt2root/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o -c /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuScalerData.cxx

MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MSUEvent.dir/msuScalerData.cxx.i"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuScalerData.cxx > CMakeFiles/MSUEvent.dir/msuScalerData.cxx.i

MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MSUEvent.dir/msuScalerData.cxx.s"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent/msuScalerData.cxx -o CMakeFiles/MSUEvent.dir/msuScalerData.cxx.s

MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.requires:
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.requires

MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.provides: MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.requires
	$(MAKE) -f MSUEvent/CMakeFiles/MSUEvent.dir/build.make MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.provides.build
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.provides

MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.provides.build: MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o

MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o: MSUEvent/CMakeFiles/MSUEvent.dir/flags.make
MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o: MSUEvent/MSUEventDictionary.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/crc.nd.edu/user/s/spectro/evt2root/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o -c /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent/MSUEventDictionary.cxx

MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.i"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent/MSUEventDictionary.cxx > CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.i

MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.s"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent/MSUEventDictionary.cxx -o CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.s

MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.requires:
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.requires

MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.provides: MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.requires
	$(MAKE) -f MSUEvent/CMakeFiles/MSUEvent.dir/build.make MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.provides.build
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.provides

MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.provides.build: MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o

MSUEvent/MSUEventDictionary.cxx: ../MSUEvent/msuEventData.h
MSUEvent/MSUEventDictionary.cxx: ../MSUEvent/msuRingScalerData.h
MSUEvent/MSUEventDictionary.cxx: ../MSUEvent/msuScalerData.h
MSUEvent/MSUEventDictionary.cxx: ../MSUEvent/MSUEventLinkDef.h
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/crc.nd.edu/user/s/spectro/evt2root/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating MSUEventDictionary.cxx, MSUEventDictionary.h"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && LD_LIBRARY_PATH=/afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/root.5.30/lib ROOTSYS=/afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/root.5.30 /afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/root.5.30/bin/rootcint -f MSUEventDictionary.cxx -c -DHAVE_CONFIG_H -I/afs/crc.nd.edu/user/n/nsl/nuclear/x86_64_linux/install/root.5.30/include -I/afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent msuEventData.h msuRingScalerData.h msuScalerData.h MSUEventLinkDef.h

MSUEvent/MSUEventDictionary.h: MSUEvent/MSUEventDictionary.cxx

# Object files for target MSUEvent
MSUEvent_OBJECTS = \
"CMakeFiles/MSUEvent.dir/msuEventData.cxx.o" \
"CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o" \
"CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o" \
"CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o"

# External object files for target MSUEvent
MSUEvent_EXTERNAL_OBJECTS =

MSUEvent/libMSUEvent.a: MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o
MSUEvent/libMSUEvent.a: MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o
MSUEvent/libMSUEvent.a: MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o
MSUEvent/libMSUEvent.a: MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o
MSUEvent/libMSUEvent.a: MSUEvent/CMakeFiles/MSUEvent.dir/build.make
MSUEvent/libMSUEvent.a: MSUEvent/CMakeFiles/MSUEvent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libMSUEvent.a"
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && $(CMAKE_COMMAND) -P CMakeFiles/MSUEvent.dir/cmake_clean_target.cmake
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MSUEvent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MSUEvent/CMakeFiles/MSUEvent.dir/build: MSUEvent/libMSUEvent.a
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/build

MSUEvent/CMakeFiles/MSUEvent.dir/requires: MSUEvent/CMakeFiles/MSUEvent.dir/msuEventData.cxx.o.requires
MSUEvent/CMakeFiles/MSUEvent.dir/requires: MSUEvent/CMakeFiles/MSUEvent.dir/msuRingScalerData.cxx.o.requires
MSUEvent/CMakeFiles/MSUEvent.dir/requires: MSUEvent/CMakeFiles/MSUEvent.dir/msuScalerData.cxx.o.requires
MSUEvent/CMakeFiles/MSUEvent.dir/requires: MSUEvent/CMakeFiles/MSUEvent.dir/MSUEventDictionary.cxx.o.requires
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/requires

MSUEvent/CMakeFiles/MSUEvent.dir/clean:
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent && $(CMAKE_COMMAND) -P CMakeFiles/MSUEvent.dir/cmake_clean.cmake
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/clean

MSUEvent/CMakeFiles/MSUEvent.dir/depend: MSUEvent/MSUEventDictionary.cxx
MSUEvent/CMakeFiles/MSUEvent.dir/depend: MSUEvent/MSUEventDictionary.h
	cd /afs/crc.nd.edu/user/s/spectro/evt2root/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/crc.nd.edu/user/s/spectro/evt2root /afs/crc.nd.edu/user/s/spectro/evt2root/MSUEvent /afs/crc.nd.edu/user/s/spectro/evt2root/build /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent /afs/crc.nd.edu/user/s/spectro/evt2root/build/MSUEvent/CMakeFiles/MSUEvent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MSUEvent/CMakeFiles/MSUEvent.dir/depend

