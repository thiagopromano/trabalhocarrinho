# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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
CMAKE_COMMAND = /opt/CLion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/CLion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thiago/CLionProjects/carrinhoVencedor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/trabalhodistribuidossensores.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trabalhodistribuidossensores.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trabalhodistribuidossensores.dir/flags.make

trabalhodistribuidossensores_arduino.ino.cpp: ../arduino.ino
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Regnerating arduino.ino Sketch"
	/opt/CLion/bin/cmake/linux/bin/cmake /home/thiago/CLionProjects/carrinhoVencedor

CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.obj: CMakeFiles/trabalhodistribuidossensores.dir/flags.make
CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.obj: trabalhodistribuidossensores_arduino.ino.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.obj"
	/opt/arduino/hardware/tools/avr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.obj -c /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores_arduino.ino.cpp

CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.i"
	/opt/arduino/hardware/tools/avr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores_arduino.ino.cpp > CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.i

CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.s"
	/opt/arduino/hardware/tools/avr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores_arduino.ino.cpp -o CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.s

# Object files for target trabalhodistribuidossensores
trabalhodistribuidossensores_OBJECTS = \
"CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.obj"

# External object files for target trabalhodistribuidossensores
trabalhodistribuidossensores_EXTERNAL_OBJECTS =

trabalhodistribuidossensores.elf: CMakeFiles/trabalhodistribuidossensores.dir/trabalhodistribuidossensores_arduino.ino.cpp.obj
trabalhodistribuidossensores.elf: CMakeFiles/trabalhodistribuidossensores.dir/build.make
trabalhodistribuidossensores.elf: libuno_md5.a
trabalhodistribuidossensores.elf: libuno_CORE.a
trabalhodistribuidossensores.elf: CMakeFiles/trabalhodistribuidossensores.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable trabalhodistribuidossensores.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trabalhodistribuidossensores.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	/opt/arduino/hardware/tools/avr/bin/avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores.elf /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	/opt/arduino/hardware/tools/avr/bin/avr-objcopy -O ihex -R .eeprom /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores.elf /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	/opt/CLion/bin/cmake/linux/bin/cmake -DFIRMWARE_IMAGE=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores.elf -DMCU=atmega328p -DEEPROM_IMAGE=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/trabalhodistribuidossensores.eep -P /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/trabalhodistribuidossensores.dir/build: trabalhodistribuidossensores.elf

.PHONY : CMakeFiles/trabalhodistribuidossensores.dir/build

CMakeFiles/trabalhodistribuidossensores.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trabalhodistribuidossensores.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trabalhodistribuidossensores.dir/clean

CMakeFiles/trabalhodistribuidossensores.dir/depend: trabalhodistribuidossensores_arduino.ino.cpp
	cd /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thiago/CLionProjects/carrinhoVencedor /home/thiago/CLionProjects/carrinhoVencedor /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles/trabalhodistribuidossensores.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trabalhodistribuidossensores.dir/depend

