# Set Library Template Path
set(SHARED_LIB_TEMPLATE ${CMAKE_HOME_DIRECTORY}/CMakeTools/Template/Lib/Shared.cmake)
set(STATIC_LIB_TEMPLATE ${CMAKE_HOME_DIRECTORY}/CMakeTools/Template/Lib/Static.cmake)

# Library Projects
add_subdirectory(LibA)
add_subdirectory(LibB)
