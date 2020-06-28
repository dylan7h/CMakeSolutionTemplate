# ToolChain Top Directory Path
set(tools                       "C:/Program Files\ (x86)/LLVM/")

# ToolChain C Compiler
set(CMAKE_C_COMPILER            "${tools}/bin/clang.exe")

# ToolChain C++ Compiler
set(CMAKE_CXX_COMPILER          "${tools}/bin/clang++.exe")

# ToolChain Archive
set(CMAKE_AR                    "${tools}/bin/llvm-ar.exe")
set(CMAKE_CXX_COMPILER_AR       "${tools}/bin/llvm-ar.exe")
set(CMAKE_C_COMPILER_AR         "${tools}/bin/llvm-ar.exe")

# ToolChain Linker
set(CMAKE_LINKER                "${tools}/bin/lld.exe")

set(TARGET_ARCH i686-pc-windows-msvc)
