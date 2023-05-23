#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MathFunctions" for configuration ""
set_property(TARGET MathFunctions APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MathFunctions PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libMathFunctions.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libMathFunctions.dylib"
  )

list(APPEND _cmake_import_check_targets MathFunctions )
list(APPEND _cmake_import_check_files_for_MathFunctions "${_IMPORT_PREFIX}/lib/libMathFunctions.dylib" )

# Import target "SqrtLibrary" for configuration ""
set_property(TARGET SqrtLibrary APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SqrtLibrary PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libSqrtLibrary.a"
  )

list(APPEND _cmake_import_check_targets SqrtLibrary )
list(APPEND _cmake_import_check_files_for_SqrtLibrary "${_IMPORT_PREFIX}/lib/libSqrtLibrary.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
