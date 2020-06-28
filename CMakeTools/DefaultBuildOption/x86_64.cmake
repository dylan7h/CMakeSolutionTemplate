# Release Mode Build Options
set(CMAKE_C_FLAGS_RELEASE_INIT     "-O2")
set(CMAKE_CXX_FLAGS_RELEASE_INIT   "-O2")

# Debug Mode Build Options
set(CMAKE_C_FLAGS_DEBUG_INIT     "-g -DDEBUG -D_DEBUG")
set(CMAKE_CXX_FLAGS_DEBUG_INIT   "-g -DDEBUG -D_DEBUG")

# static build option
if(WIN32)
    if(NOT ${TARGET_ARCH} MATCHES i686-pc-windows-msvc OR x86_64-pc-windows-msvc)
        # GNU Option
        set(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive -static-libgcc -static-libstdc++")
    else()
        # MSVC Option - Will be Added...
    endif()
else()
    set(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-Bstatic,--no-whole-archive -static-libgcc -static-libstdc++")
endif()
