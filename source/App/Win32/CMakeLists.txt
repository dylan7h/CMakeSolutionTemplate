# CMake Minimum Required Version Information
cmake_minimum_required(VERSION 3.15)

project(
    # Project Name
    WIN32
    # Version <Major>.<Minor>.<Patch>.<Tweak>
    VERSION         0.0.0.1
    # Project Description
    DESCRIPTION     ""
    # Project Language
    LANGUAGES       CXX
)

# Enable Win32 Executable
set(WIN32_EXEC ON)

# Project Compile Defines
set(DEFINES
    ${COMMON_DEFINES}
)

# Project Compile Options
set(CFLAGS
    ${COMMON_CFLAGS}
)

# Library Paths
set(LDPATH

)

# Library Files
set(LIBS
    LibA
    LibB
)

# Compile Include Paths
set(INCS
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc
)

# Compile Source Files
set(SRCS
    Src/main.cpp
)

# Include Application Temaplate
include(${WIN32_APP_TEMPLATE})
