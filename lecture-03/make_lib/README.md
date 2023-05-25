## Makefiles to CMake

To convert to CMake run the following commands from the directories in [make_lib](../make_lib) in this order:

1. [libName](../make_lib/src/libName)
2. [appStudent](../make_lib/src/appStudent)
3. [src](../make_lib/src)
4. [make_lib](../make_lib) 


### Commands 

- `mkdir my_build`
- `cd my_build`
- `cmake ..`
- `cmake --build .`

### Files

|   #   | Files                            | Description                                                              |
| :---: | -------------------------------- |--------------------------------------------------------------------------|
|   1   | [bin](bin)                       | holds the student_service executable from the make build                 |
|   2   | [build](build)                   | holds the student_service executable and build files from the Cmake build|
|   3   | [include](include)               | holds the header file for library Name                                   |
|   4   | [lib](lib)                       | holds the shared libray (.so) and static/archive (.a) library files      |
|   5   | [src](src)                       | holds the source files for appStudent and libName                        |
|   6   | [CMakeLists.txt](CMakeLists.txt) | cmake file to complile the application                                   |

