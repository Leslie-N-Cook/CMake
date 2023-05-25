# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name to StudentMatters
project (StudentMatters)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# include all directries in make_lib
include_directories(./bin ./lib ./include ./src)

# Create a list of source files to be compiled
set(SRC
  Student.cpp
  Main.cpp
  )

# ensure the compiler can find the library and necessary files
find_library(libName Name ./lib ./bin ./include ./src)
find_file(Name Main.cpp ./lib ./bin ./include ./src)

# Link the acrchive library and the shared library
link_libraries(libName.a libName.so)

# Link the directories in make_lib
link_directories(./lib ./bin ./include ./src)

# Build Name class in a separate library
add_library(Name ${PROJECT_SOURCE_DIR}/src/appStudent/Main.cpp)

# Compile the executable
add_executable(student_service ${PROJECT_SOURCE_DIR}/src/appStudent/Main.cpp)

# Link to the Name library
target_link_libraries(student_service Name)
