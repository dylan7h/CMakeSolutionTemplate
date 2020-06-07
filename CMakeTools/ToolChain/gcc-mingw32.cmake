# ToolChain Top Directory Path
SET(tools                       "C:/msys64/mingw32")

# ToolChain C Compiler
SET(CMAKE_C_COMPILER            "${tools}/bin/gcc.exe")

# ToolChain C++ Compiler
SET(CMAKE_CXX_COMPILER          "${tools}/bin/g++.exe")

# ToolChain Archive
SET(CMAKE_AR                    "${tools}/bin/ar.exe")
SET(CMAKE_CXX_COMPILER_AR       "${tools}/bin/ar.exe")
SET(CMAKE_C_COMPILER_AR         "${tools}/bin/ar.exe")

# ToolChain Linker
SET(CMAKE_LINKER                "${tools}/bin/ld.exe")
