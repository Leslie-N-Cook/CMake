# CMake configuration file

cmake_minimum_required (VERSION 3.0)
project (StudentMatters)

set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")


# Create a list of source files to be compiled
set(SRC
  Name.cpp
  
)


include_directories(./include ./lib ./src ./bin)

# Build Name class in a separate library
add_library(Name Name.cpp)

#
# Compile the executable
# add_executable(student_service ${SRC})
# # Link to the Name library
# target_link_libraries(student_service Name)


