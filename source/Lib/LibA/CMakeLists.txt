# CMake Minimum Required Version Information
cmake_minimum_required(VERSION 3.15)

project(
    # Project Name
    LibA
    # Version <Major>.<Minor>.<Patch>.<Tweak>
    VERSION         0.0.0.1
    # Project Description
    DESCRIPTION     ""
    # Author Hompage URL
    HOMEPAGE_URL    ""
    # Project Language
    LANGUAGES       CXX
)

# Project Compile Defines
set(DEFINES
    ${COMMON_DEFINES}
)

# Project Compile Options
set(CFLAGS
    ${COMMON_CFLAGS}
)

# Compile Include Paths
set(INCS
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc
)

# Compile Source Files
set(SRCS
    Src/LibA.cpp
)

# Include Library Temaplate
include(${STATIC_LIB_TEMPLATE})
