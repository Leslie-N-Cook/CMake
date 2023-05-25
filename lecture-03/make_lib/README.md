## Makefiles to CMake

To convert to CMake run the following commands from the [make_lib](../make_lib) directory of the project.

### Commands 

- `mkdir build`
- `cd build`
- `cmake ..`
- `cmake --build .`

### Files

|   #   | Files                            | Description                                                                |
| :---: | -------------------------------- |----------------------------------------------------------------------------|
|   1   | [bin](bin)                       | holds the student_service executable from the make build                   |
|   2   | [build](build)                   | holds the student_service executable cmake build files from the cmake build|
|   3   | [include](include)               | holds the header file for library Name                                     |
|   4   | [lib](lib)                       | holds the shared libray (.so) and static/archive (.a) library files        |
|   5   | [src](src)                       | holds the source files for appStudent and libName                          |
|   6   | [CMakeLists.txt](CMakeLists.txt) | cmake file to complile the application                                     |

