# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11/Step11_build

# Utility rule file for NightlySubmit.

# Include any custom commands dependencies for this target.
include CMakeFiles/NightlySubmit.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NightlySubmit.dir/progress.make

CMakeFiles/NightlySubmit:
	/opt/homebrew/lib/python3.11/site-packages/cmake/data/bin/ctest -D NightlySubmit

NightlySubmit: CMakeFiles/NightlySubmit
NightlySubmit: CMakeFiles/NightlySubmit.dir/build.make
.PHONY : NightlySubmit

# Rule to build all files generated by this target.
CMakeFiles/NightlySubmit.dir/build: NightlySubmit
.PHONY : CMakeFiles/NightlySubmit.dir/build

CMakeFiles/NightlySubmit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NightlySubmit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NightlySubmit.dir/clean

CMakeFiles/NightlySubmit.dir/depend:
	cd /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11/Step11_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11 /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11 /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11/Step11_build /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11/Step11_build /Users/lesliecook/CMake_tutorials/cmake-3.26.4-tutorial-source/Step11/Step11_build/CMakeFiles/NightlySubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NightlySubmit.dir/depend

