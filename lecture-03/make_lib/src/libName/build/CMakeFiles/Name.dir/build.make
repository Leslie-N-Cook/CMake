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
CMAKE_SOURCE_DIR = /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build

# Include any dependencies generated for this target.
include CMakeFiles/Name.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Name.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Name.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Name.dir/flags.make

CMakeFiles/Name.dir/Name.cpp.o: CMakeFiles/Name.dir/flags.make
CMakeFiles/Name.dir/Name.cpp.o: /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/Name.cpp
CMakeFiles/Name.dir/Name.cpp.o: CMakeFiles/Name.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Name.dir/Name.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Name.dir/Name.cpp.o -MF CMakeFiles/Name.dir/Name.cpp.o.d -o CMakeFiles/Name.dir/Name.cpp.o -c /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/Name.cpp

CMakeFiles/Name.dir/Name.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Name.dir/Name.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/Name.cpp > CMakeFiles/Name.dir/Name.cpp.i

CMakeFiles/Name.dir/Name.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Name.dir/Name.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/Name.cpp -o CMakeFiles/Name.dir/Name.cpp.s

# Object files for target Name
Name_OBJECTS = \
"CMakeFiles/Name.dir/Name.cpp.o"

# External object files for target Name
Name_EXTERNAL_OBJECTS =

libName.a: CMakeFiles/Name.dir/Name.cpp.o
libName.a: CMakeFiles/Name.dir/build.make
libName.a: CMakeFiles/Name.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libName.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Name.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Name.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Name.dir/build: libName.a
.PHONY : CMakeFiles/Name.dir/build

CMakeFiles/Name.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Name.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Name.dir/clean

CMakeFiles/Name.dir/depend:
	cd /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/libName/build/CMakeFiles/Name.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Name.dir/depend

