# Set Application Template Path
set(CLI_APP_TEMPLATE ${CMAKE_HOME_DIRECTORY}/CMakeTools/Template/App/CLI.cmake)
set(WIN32_APP_TEMPLATE ${CMAKE_HOME_DIRECTORY}/CMakeTools/Template/App/Win32.cmake)

# Application Projects
add_subdirectory(CLI)
add_subdirectory(Win32)
