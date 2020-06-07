# Library Target[ *.lib | *.a | *.dll | *.so  ]
add_library(                    ${PROJECT_NAME} SHARED  ${SRCS})

# Add Target Compile Definitions
target_compile_definitions(     ${PROJECT_NAME} PRIVATE ${DEFINES})

# Add Target Compile Options
target_compile_options(         ${PROJECT_NAME} PRIVATE ${CFLAGS})

# Add Target Compile Include Path
target_include_directories(     ${PROJECT_NAME} PRIVATE ${INCS})
