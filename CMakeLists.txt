# CMake Minimum Required Version Information
cmake_minimum_required(VERSION 3.15)

# Display Make Log
set(CMAKE_VERBOSE_MAKEFILE OFF)

# Export Compile Command
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Change ToolChain
set(CMAKE_TOOLCHAIN_FILE "CMakeTools/ToolChain/clang-mingw32.cmake")

project(
    # Project Name
    Solution
    # Version <Major>.<Minor>.<Patch>.<Tweak>
    VERSION 0.0.0.1
)

# Common Compile Defines
set(COMMON_DEFINES

)

# Common Compile Options
set(COMMON_CFLAGS

)

# Common Linker Options
set(COMMON_LDFLAGS

)

# Change Default Build Result Path
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY          ${CMAKE_HOME_DIRECTORY}/bin/App)    # *.exe | *.out | *.elf | *.axf | *.dll | *.so
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY          ${CMAKE_HOME_DIRECTORY}/bin/Lib)    # *.dll.a | *.so.a
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY          ${CMAKE_HOME_DIRECTORY}/bin/Lib)    # *.lib | *.a
set(CMAKE_PDB_OUTPUT_DIRECTORY              ${CMAKE_HOME_DIRECTORY}/bin/PDB)    # MS Compiler Output File
set(CMAKE_COMPILE_PDB_OUTPUT_DIRECTORY      ${CMAKE_HOME_DIRECTORY}/bin/PDB)    # MS Compiler Output File

# Jump To Sub Directories
add_subdirectory(source/Lib)
add_subdirectory(source/App)
