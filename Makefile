# Select Build Type( Debug | Release )
BUILD_TYPE := Debug

# Generator( "Unix Makefiles" | ... )
GENERATOR := "Unix Makefiles"

# Export Compile Commands
EXPORT_COMPILE_CMD=ON

# Top CMakeLists.txt Path
HOME_DIR  := .

# CMake Build System Path
BUILD_DIR := build

# Config & Build
all: config build

# Generate CMake Build System
config:
	cmake -B$(BUILD_DIR) -H$(HOME_DIR) -G $(GENERATOR) -DCMAKE_EXPORT_COMPILE_COMMANDS=$(EXPORT_COMPILE_CMD) -DCMAKE_BUILD_TYPE=$(BUILD_TYPE)
.PHONY : config

# Remove CMake Build System
remove:
	cmake -E remove_directory $(BUILD_DIR)
.PHONY : remove

# Build All          
build:
	cmake --build $(BUILD_DIR)
.PHONY : build	

# Clean & Build All  
rebuild:
	cmake --build $(BUILD_DIR) --clean-first
.PHONY : rebuild	

# Clean All
clean:
	cmake --build $(BUILD_DIR) --target clean
.PHONY : clean	
