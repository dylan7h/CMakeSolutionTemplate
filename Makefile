# Generator( "Unix Makefiles" | ... )
GENERATOR := "Unix Makefiles"

# Top CMakeLists.txt Path
HOME_DIR  := .

# CMake Build System Path
BUILD_DIR := build

# Config & Build
all: config build

# Generate CMake Build System
config:
	cmake -B$(BUILD_DIR) -H$(HOME_DIR) -G $(GENERATOR)
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
