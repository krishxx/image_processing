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
include contrib/addtiffo/CMakeFiles/addtiffo.dir/depend.make

# Include the progress variables for this target.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/includes_C.rsp
contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj: ../contrib/addtiffo/addtiffo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\addtiffo.dir\addtiffo.c.obj   -c C:\antworks\tiff-4.0.10\contrib\addtiffo\addtiffo.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/addtiffo.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\contrib\addtiffo\addtiffo.c > CMakeFiles\addtiffo.dir\addtiffo.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/addtiffo.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\contrib\addtiffo\addtiffo.c -o CMakeFiles\addtiffo.dir\addtiffo.c.s

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/includes_C.rsp
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj: ../contrib/addtiffo/tif_overview.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\addtiffo.dir\tif_overview.c.obj   -c C:\antworks\tiff-4.0.10\contrib\addtiffo\tif_overview.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/tif_overview.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\contrib\addtiffo\tif_overview.c > CMakeFiles\addtiffo.dir\tif_overview.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/tif_overview.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\contrib\addtiffo\tif_overview.c -o CMakeFiles\addtiffo.dir\tif_overview.c.s

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/includes_C.rsp
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj: ../contrib/addtiffo/tif_ovrcache.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\addtiffo.dir\tif_ovrcache.c.obj   -c C:\antworks\tiff-4.0.10\contrib\addtiffo\tif_ovrcache.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/tif_ovrcache.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\contrib\addtiffo\tif_ovrcache.c > CMakeFiles\addtiffo.dir\tif_ovrcache.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/tif_ovrcache.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\contrib\addtiffo\tif_ovrcache.c -o CMakeFiles\addtiffo.dir\tif_ovrcache.c.s

# Object files for target addtiffo
addtiffo_OBJECTS = \
"CMakeFiles/addtiffo.dir/addtiffo.c.obj" \
"CMakeFiles/addtiffo.dir/tif_overview.c.obj" \
"CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj"

# External object files for target addtiffo
addtiffo_EXTERNAL_OBJECTS =

contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/build.make
contrib/addtiffo/addtiffo.exe: libtiff/libtiff.dll.a
contrib/addtiffo/addtiffo.exe: port/libport.a
contrib/addtiffo/addtiffo.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/linklibs.rsp
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/objects1.rsp
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable addtiffo.exe"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\addtiffo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/addtiffo/CMakeFiles/addtiffo.dir/build: contrib/addtiffo/addtiffo.exe

.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/build

contrib/addtiffo/CMakeFiles/addtiffo.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\contrib\addtiffo && $(CMAKE_COMMAND) -P CMakeFiles\addtiffo.dir\cmake_clean.cmake
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/clean

contrib/addtiffo/CMakeFiles/addtiffo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\contrib\addtiffo C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\contrib\addtiffo C:\antworks\tiff-4.0.10\build\contrib\addtiffo\CMakeFiles\addtiffo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/depend

