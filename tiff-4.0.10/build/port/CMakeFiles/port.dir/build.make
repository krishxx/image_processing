# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\antworks\tiff-4.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\antworks\tiff-4.0.10\build

# Include any dependencies generated for this target.
include port/CMakeFiles/port.dir/depend.make

# Include the progress variables for this target.
include port/CMakeFiles/port.dir/progress.make

# Include the compile flags for this target's objects.
include port/CMakeFiles/port.dir/flags.make

port/CMakeFiles/port.dir/dummy.c.obj: port/CMakeFiles/port.dir/flags.make
port/CMakeFiles/port.dir/dummy.c.obj: ../port/dummy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object port/CMakeFiles/port.dir/dummy.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\port && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\port.dir\dummy.c.obj   -c C:\antworks\tiff-4.0.10\port\dummy.c

port/CMakeFiles/port.dir/dummy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/port.dir/dummy.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\port && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\port\dummy.c > CMakeFiles\port.dir\dummy.c.i

port/CMakeFiles/port.dir/dummy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/port.dir/dummy.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\port && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\port\dummy.c -o CMakeFiles\port.dir\dummy.c.s

# Object files for target port
port_OBJECTS = \
"CMakeFiles/port.dir/dummy.c.obj"

# External object files for target port
port_EXTERNAL_OBJECTS =

port/libport.a: port/CMakeFiles/port.dir/dummy.c.obj
port/libport.a: port/CMakeFiles/port.dir/build.make
port/libport.a: port/CMakeFiles/port.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libport.a"
	cd /d C:\antworks\tiff-4.0.10\build\port && $(CMAKE_COMMAND) -P CMakeFiles\port.dir\cmake_clean_target.cmake
	cd /d C:\antworks\tiff-4.0.10\build\port && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\port.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
port/CMakeFiles/port.dir/build: port/libport.a

.PHONY : port/CMakeFiles/port.dir/build

port/CMakeFiles/port.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\port && $(CMAKE_COMMAND) -P CMakeFiles\port.dir\cmake_clean.cmake
.PHONY : port/CMakeFiles/port.dir/clean

port/CMakeFiles/port.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\port C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\port C:\antworks\tiff-4.0.10\build\port\CMakeFiles\port.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : port/CMakeFiles/port.dir/depend

