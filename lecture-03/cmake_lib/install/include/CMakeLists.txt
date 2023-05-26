# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name to StudentMatters
project (StudentMatters)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# include all directries in make_lib
include_directories(./lib ./include)

# Create a list of source files to be compiled
set(SRC
  Student.cpp
  Main.cpp
  )

# ensure the compiler can find the library and necessary files

# find_file(Name Main.cpp ./lib ./bin ./include ./src)

link_directories(./lib ./include)

add_subdirectory(libName)
