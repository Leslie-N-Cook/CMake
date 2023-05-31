# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name
project (StudentMattersLib)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# set the source files to be compiled
set(SRC
  Name.cpp
)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "../lib")
set(CMAKE_ISPC_HEADER_DIRECTORY "../include")
# MODULE == shared library (.so)
add_library(Name MODULE ${SRC})

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)





# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "bin")