# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yoonki/workspace/VersionExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yoonki/workspace/VersionExample/build

# Include any dependencies generated for this target.
include CMakeFiles/version.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/version.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/version.dir/flags.make

CMakeFiles/version.dir/src/main.c.o: CMakeFiles/version.dir/flags.make
CMakeFiles/version.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yoonki/workspace/VersionExample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/version.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/version.dir/src/main.c.o   -c /home/yoonki/workspace/VersionExample/src/main.c

CMakeFiles/version.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/version.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yoonki/workspace/VersionExample/src/main.c > CMakeFiles/version.dir/src/main.c.i

CMakeFiles/version.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/version.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yoonki/workspace/VersionExample/src/main.c -o CMakeFiles/version.dir/src/main.c.s

CMakeFiles/version.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/version.dir/src/main.c.o.requires

CMakeFiles/version.dir/src/main.c.o.provides: CMakeFiles/version.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/version.dir/build.make CMakeFiles/version.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/version.dir/src/main.c.o.provides

CMakeFiles/version.dir/src/main.c.o.provides.build: CMakeFiles/version.dir/src/main.c.o


# Object files for target version
version_OBJECTS = \
"CMakeFiles/version.dir/src/main.c.o"

# External object files for target version
version_EXTERNAL_OBJECTS =

version: CMakeFiles/version.dir/src/main.c.o
version: CMakeFiles/version.dir/build.make
version: CMakeFiles/version.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yoonki/workspace/VersionExample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable version"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/version.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/version.dir/build: version

.PHONY : CMakeFiles/version.dir/build

CMakeFiles/version.dir/requires: CMakeFiles/version.dir/src/main.c.o.requires

.PHONY : CMakeFiles/version.dir/requires

CMakeFiles/version.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/version.dir/cmake_clean.cmake
.PHONY : CMakeFiles/version.dir/clean

CMakeFiles/version.dir/depend:
	cd /home/yoonki/workspace/VersionExample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yoonki/workspace/VersionExample /home/yoonki/workspace/VersionExample /home/yoonki/workspace/VersionExample/build /home/yoonki/workspace/VersionExample/build /home/yoonki/workspace/VersionExample/build/CMakeFiles/version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/version.dir/depend

