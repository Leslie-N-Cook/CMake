### CMake Using shared

Run the following commands from the [srcStudent](../srcStudent) directory to build the Student application.

### Commands 

- `rm -r build bin`
- `mkdir my_build`
- `cd my_build`
- `cmake ..`
- `cmake --build .`

|   #   | Files                            | Description                               |
| :---: | ---------------------------------|-------------------------------------------|
|   1   | [CMakeLists.txt](CMakeLists.txt) | CMake file for Student application.       |
|   2   | [main.cpp](main.cpp)             | Main C++ file with the `main()` function. |
|   3   | [Student.cpp](Student.cpp)       | Student class implementation.             |
|   4   | [Student.hpp](Student.hpp)       | Student class declaration.                |