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
CMAKE_SOURCE_DIR = /Users/lesliecook/CMake_tutorials/lecture-03/make_lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build

# Include any dependencies generated for this target.
include CMakeFiles/student_service.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/student_service.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/student_service.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/student_service.dir/flags.make

CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o: CMakeFiles/student_service.dir/flags.make
CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o: /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/appStudent/Main.cpp
CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o: CMakeFiles/student_service.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o -MF CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o.d -o CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o -c /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/appStudent/Main.cpp

CMakeFiles/student_service.dir/src/appStudent/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/student_service.dir/src/appStudent/Main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/appStudent/Main.cpp > CMakeFiles/student_service.dir/src/appStudent/Main.cpp.i

CMakeFiles/student_service.dir/src/appStudent/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/student_service.dir/src/appStudent/Main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/src/appStudent/Main.cpp -o CMakeFiles/student_service.dir/src/appStudent/Main.cpp.s

# Object files for target student_service
student_service_OBJECTS = \
"CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o"

# External object files for target student_service
student_service_EXTERNAL_OBJECTS =

student_service: CMakeFiles/student_service.dir/src/appStudent/Main.cpp.o
student_service: CMakeFiles/student_service.dir/build.make
student_service: libName.a
student_service: CMakeFiles/student_service.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable student_service"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/student_service.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/student_service.dir/build: student_service
.PHONY : CMakeFiles/student_service.dir/build

CMakeFiles/student_service.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/student_service.dir/cmake_clean.cmake
.PHONY : CMakeFiles/student_service.dir/clean

CMakeFiles/student_service.dir/depend:
	cd /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lesliecook/CMake_tutorials/lecture-03/make_lib /Users/lesliecook/CMake_tutorials/lecture-03/make_lib /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build /Users/lesliecook/CMake_tutorials/lecture-03/make_lib/build/CMakeFiles/student_service.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/student_service.dir/depend

