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
include CMakeFiles/uno_md5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uno_md5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uno_md5.dir/flags.make

CMakeFiles/uno_md5.dir/md5/md5.cpp.obj: CMakeFiles/uno_md5.dir/flags.make
CMakeFiles/uno_md5.dir/md5/md5.cpp.obj: ../md5/md5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/uno_md5.dir/md5/md5.cpp.obj"
	/opt/arduino/hardware/tools/avr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uno_md5.dir/md5/md5.cpp.obj -c /home/thiago/CLionProjects/carrinhoVencedor/md5/md5.cpp

CMakeFiles/uno_md5.dir/md5/md5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uno_md5.dir/md5/md5.cpp.i"
	/opt/arduino/hardware/tools/avr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thiago/CLionProjects/carrinhoVencedor/md5/md5.cpp > CMakeFiles/uno_md5.dir/md5/md5.cpp.i

CMakeFiles/uno_md5.dir/md5/md5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uno_md5.dir/md5/md5.cpp.s"
	/opt/arduino/hardware/tools/avr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thiago/CLionProjects/carrinhoVencedor/md5/md5.cpp -o CMakeFiles/uno_md5.dir/md5/md5.cpp.s

# Object files for target uno_md5
uno_md5_OBJECTS = \
"CMakeFiles/uno_md5.dir/md5/md5.cpp.obj"

# External object files for target uno_md5
uno_md5_EXTERNAL_OBJECTS =

libuno_md5.a: CMakeFiles/uno_md5.dir/md5/md5.cpp.obj
libuno_md5.a: CMakeFiles/uno_md5.dir/build.make
libuno_md5.a: CMakeFiles/uno_md5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libuno_md5.a"
	$(CMAKE_COMMAND) -P CMakeFiles/uno_md5.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uno_md5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uno_md5.dir/build: libuno_md5.a

.PHONY : CMakeFiles/uno_md5.dir/build

CMakeFiles/uno_md5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uno_md5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uno_md5.dir/clean

CMakeFiles/uno_md5.dir/depend:
	cd /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thiago/CLionProjects/carrinhoVencedor /home/thiago/CLionProjects/carrinhoVencedor /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug /home/thiago/CLionProjects/carrinhoVencedor/cmake-build-debug/CMakeFiles/uno_md5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uno_md5.dir/depend

