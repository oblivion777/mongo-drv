#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mongo::bson_shared" for configuration "RelWithDebInfo"
set_property(TARGET mongo::bson_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(mongo::bson_shared PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libbson-1.0.so.0.0.0"
  IMPORTED_SONAME_RELWITHDEBINFO "libbson-1.0.so.0"
  )

list(APPEND _cmake_import_check_targets mongo::bson_shared )
list(APPEND _cmake_import_check_files_for_mongo::bson_shared "${_IMPORT_PREFIX}/lib/libbson-1.0.so.0.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
