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
CMAKE_SOURCE_DIR = C:\antworks\libpng-1.6.36

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\antworks\libpng-1.6.36\build

# Include any dependencies generated for this target.
include CMakeFiles/pngunknown.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pngunknown.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pngunknown.dir/flags.make

CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.obj: CMakeFiles/pngunknown.dir/flags.make
CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.obj: CMakeFiles/pngunknown.dir/includes_C.rsp
CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.obj: ../contrib/libtests/pngunknown.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\libpng-1.6.36\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\pngunknown.dir\contrib\libtests\pngunknown.c.obj   -c C:\antworks\libpng-1.6.36\contrib\libtests\pngunknown.c

CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\libpng-1.6.36\contrib\libtests\pngunknown.c > CMakeFiles\pngunknown.dir\contrib\libtests\pngunknown.c.i

CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\libpng-1.6.36\contrib\libtests\pngunknown.c -o CMakeFiles\pngunknown.dir\contrib\libtests\pngunknown.c.s

# Object files for target pngunknown
pngunknown_OBJECTS = \
"CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.obj"

# External object files for target pngunknown
pngunknown_EXTERNAL_OBJECTS =

pngunknown.exe: CMakeFiles/pngunknown.dir/contrib/libtests/pngunknown.c.obj
pngunknown.exe: CMakeFiles/pngunknown.dir/build.make
pngunknown.exe: libpng16.dll.a
pngunknown.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
pngunknown.exe: CMakeFiles/pngunknown.dir/linklibs.rsp
pngunknown.exe: CMakeFiles/pngunknown.dir/objects1.rsp
pngunknown.exe: CMakeFiles/pngunknown.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\libpng-1.6.36\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pngunknown.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pngunknown.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pngunknown.dir/build: pngunknown.exe

.PHONY : CMakeFiles/pngunknown.dir/build

CMakeFiles/pngunknown.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pngunknown.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pngunknown.dir/clean

CMakeFiles/pngunknown.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\libpng-1.6.36 C:\antworks\libpng-1.6.36 C:\antworks\libpng-1.6.36\build C:\antworks\libpng-1.6.36\build C:\antworks\libpng-1.6.36\build\CMakeFiles\pngunknown.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pngunknown.dir/depend

