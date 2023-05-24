# CMake configuration file

cmake_minimum_required (VERSION 3.0)
project (StudentMatters)

set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

include_directories(./bin ./lib ./include ./src)
# Create a list of source files to be compiled
set(SRC
  Student.cpp
  Main.cpp
  Name.cpp
  )



find_library(libName Name ./lib ./bin ./include ./src)
find_file(Name Main.cpp ./lib ./bin ./include ./src)
# Build Name class in a separate library
# link_libraries(libName appStudent)
link_directories(libName appStudent)
# Build Name class in a separate library
add_library(Name ${PROJECT_SOURCE_DIR}/appStudent/Main.cpp)


# Compile the executable
# add_executable(student_service ${PROJECT_SOURCE_DIR}/appStudent/Student.cpp)
# Link to the Name library
# target_link_libraries(student_service Name)



