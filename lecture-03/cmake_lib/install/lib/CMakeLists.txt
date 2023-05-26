# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name to StudentMatters
project (StudentMatters)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# include all directries in make_lib
include_directories(./install ./lib ./libName)

# Create a list of source files to be compiled
set(SRC
  Student.cpp
  Main.cpp
  )

# ensure the compiler can find the library and necessary files


link_directories(./lib  ./libName)

link_libraries(libName.so libName.a)

link_directories(./lib ./libName)

add_subdirectory(libName)

