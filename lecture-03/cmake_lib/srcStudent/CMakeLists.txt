
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

add_library(Name INTERFACE /usr/local/lib/libName.so)

target_sources(Name INTERFACE FILE_SET HEADERS BASE_DIRS /usr/local/srcLib/ FILES   /usr/local/srcLib/include/Name.hpp)
install(FILES /usr/local/srcLib/include/Name.hpp DESTINATION srcStudent)
install(TARGETS Name EXPORT NameExport FILE_SET HEADERS DESTINATION /include/Name)
install(EXPORT NameExport NAMESPACE Upstream:: DESTINATION lib/cmake/Name EXPORT_LINK_INTERFACE_LIBRARIES )

add_executable(student_service ${SRC})
target_link_libraries(student_service Name)

