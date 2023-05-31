### CMake build shared library

Run the following commands from the [srcLib](../srcLib) directory to build the shared library.

### Commands 

- `rm -r build include lib`
- `mkdir my_build`
- `cd my_build`
- `cmake ..`
- `cmake --build .`
- `cmake --install .`

### Files

|   #   | Files                             | Description                                                              |
| :---: | --------------------------------  |--------------------------------------------------------------------------|
|   1   | [CMakeLists.txt](CMakeLists.txt)  | CMake file for building the shared library                               |
|   2   | [Name.cpp](Name.cpp)              | Main file to demonstrate the usage of the shared library                 |
|   3   | [Name.hpp](Name.hpp)              | Header file for the shared library                                       |