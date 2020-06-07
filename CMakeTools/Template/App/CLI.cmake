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
