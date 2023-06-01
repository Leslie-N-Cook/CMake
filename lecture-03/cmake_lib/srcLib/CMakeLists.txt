# CMake configuration file
cmake_minimum_required (VERSION 3.0)

# Set the project name
project (StudentMattersLib)

# Set the compilers to be used
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# set the source files to be compiled
set(SRC Name.cpp)


# copy the headers to the include directory
set(HEADERS Name.hpp)
foreach(header ${HEADERS})
    configure_file(${header} ../include/${header} COPYONLY)
endforeach()

# set the library output directory
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "../lib")

# SHARED == shared library MAC (.dylib)
add_library(Name SHARED ${SRC})

#allows user to select options with for building
option(BUILD_SHARED_LIBS "Build using shared libraries" ON)
# option(CMAKE_INSTALL_PREFIX "Install path prefix" "../install")

#sets the header files
set_target_properties(Name PROPERTIES PUBLIC_HEADER "Name.hpp")

#installs the header files in the folder srcLib
INSTALL(TARGETS Name 
        LIBRARY DESTINATION srcLib/lib
        PUBLIC_HEADER DESTINATION srcLib/include
)
























# CMake configuration file
# cmake_minimum_required (VERSION 3.0)

# # Set the project name
# project (StudentMattersLib)

# # Set the compilers to be used
# set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
# set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

# # set the source files to be compiled
# set(SRC Name.cpp)


# # copy the headers to the include directory
# set(HEADERS Name.hpp)
# foreach(header ${HEADERS})
#     configure_file(${header} ../include/${header} COPYONLY)
# endforeach()

# # set the library output directory
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "../lib")

# # MODULE == shared library (.so)
# add_library(Name MODULE ${SRC})

# option(BUILD_SHARED_LIBS "Build using shared libraries" ON)
# option(CMAKE_INSTALL_PREFIX "Install path prefix" "../install")
# set_target_properties(Name PROPERTIES PUBLIC_HEADER "Name.hpp")

# INSTALL(TARGETS Name 
#         LIBRARY DESTINATION srcLib/lib
#         PUBLIC_HEADER DESTINATION srcLib/include
# )