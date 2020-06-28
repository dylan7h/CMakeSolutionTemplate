# set build output directory
set(BUILD_OUTPUT_DIR ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME})

# Excecutable Target[ *.elf | *.axf | *.exe | *.out ]
add_executable( ${PROJECT_NAME} ${SRCS})

# Add Target Compile Definitions
target_compile_definitions( ${PROJECT_NAME} PRIVATE     ${DEFINES})

# Add Target Compile Options
target_compile_options(     ${PROJECT_NAME} PRIVATE     ${CFLAGS})

# Add Target Compile Include Path
target_include_directories( ${PROJECT_NAME} PRIVATE     ${INCS})

# Add Taget Link Directory Of Library
target_link_directories(    ${PROJECT_NAME} PRIVATE     ${LDPATH})

# Add Taget Link Directory Of Library
target_link_libraries(      ${PROJECT_NAME} PRIVATE     ${LIBS})

# Generate Map File | Add Clean Rule
if(NOT ${CMAKE_GENERATOR} MATCHES "^Visual\ Studio")
    target_link_options(        ${PROJECT_NAME} PRIVATE     -Wl,-Map=${BUILD_OUTPUT_DIR}/${PROJECT_NAME}.map)
    set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES ${BUILD_OUTPUT_DIR}/${PROJECT_NAME}.map)
endif()

# Set Build Output Directory
set_target_properties(      
    ${PROJECT_NAME} PROPERTIES 
    RUNTIME_OUTPUT_DIRECTORY ${BUILD_OUTPUT_DIR}
)
