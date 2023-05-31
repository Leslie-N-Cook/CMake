# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name
project (StudentMatters)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# set the source files to be compiled
set(SRC Main.cpp Student.cpp)




# set the output directory to "bin"
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "../bin")

include_directories(${srcLib_SOURCE_DIR} )
# create the executable
add_executable(student_service ${SRC})
target_link_libraries(student_service Name)

find_file(NAME Name.hpp PATHS ${CMAKE_INCLUDE_PATH})

add_link_options(-L${CMAKE_SYSTEM_INCLUDE_PATH} Name.hpp)


# install(FILES ${CMAKE_INCLUDE_PATH}Name.hpp DESTINATION ${CMAKE_CURRENT_BINARY_DIR})