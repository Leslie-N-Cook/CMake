# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name
project (StudentMatters)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# set the source files to be compiled
set(SRC Main.cpp Student.cpp)
set(HEADERS Student.hpp Name.hpp)

