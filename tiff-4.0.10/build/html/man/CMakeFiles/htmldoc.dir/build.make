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

# Utility rule file for htmldoc.

# Include the progress variables for this target.
include html/man/CMakeFiles/htmldoc.dir/progress.make

html/man/CMakeFiles/htmldoc:
	cd /d C:\antworks\tiff-4.0.10\build\html\man && "C:\Program Files\CMake\bin\cmake.exe" -DMANSRCDIR=C:/antworks/tiff-4.0.10/man -DHTMLMANDIR=C:/antworks/tiff-4.0.10/html/man -DINDEXFILE=index.html -DDOCFILES=libtiff.3tiff.html^TIFFbuffer.3tiff.html^TIFFClose.3tiff.html^TIFFcodec.3tiff.html^TIFFcolor.3tiff.html^TIFFDataWidth.3tiff.html^TIFFError.3tiff.html^TIFFFieldDataType.3tiff.html^TIFFFieldName.3tiff.html^TIFFFieldPassCount.3tiff.html^TIFFFieldReadCount.3tiff.html^TIFFFieldTag.3tiff.html^TIFFFieldWriteCount.3tiff.html^TIFFFlush.3tiff.html^TIFFGetField.3tiff.html^TIFFmemory.3tiff.html^TIFFOpen.3tiff.html^TIFFPrintDirectory.3tiff.html^TIFFquery.3tiff.html^TIFFReadDirectory.3tiff.html^TIFFReadEncodedStrip.3tiff.html^TIFFReadEncodedTile.3tiff.html^TIFFReadRawStrip.3tiff.html^TIFFReadRawTile.3tiff.html^TIFFReadRGBAImage.3tiff.html^TIFFReadRGBAStrip.3tiff.html^TIFFReadRGBATile.3tiff.html^TIFFReadScanline.3tiff.html^TIFFReadTile.3tiff.html^TIFFRGBAImage.3tiff.html^TIFFSetDirectory.3tiff.html^TIFFSetField.3tiff.html^TIFFsize.3tiff.html^TIFFstrip.3tiff.html^TIFFswab.3tiff.html^TIFFtile.3tiff.html^TIFFWarning.3tiff.html^TIFFWriteDirectory.3tiff.html^TIFFWriteEncodedStrip.3tiff.html^TIFFWriteEncodedTile.3tiff.html^TIFFWriteRawStrip.3tiff.html^TIFFWriteRawTile.3tiff.html^TIFFWriteScanline.3tiff.html^TIFFWriteTile.3tiff.html^fax2ps.1.html^fax2tiff.1.html^pal2rgb.1.html^ppm2tiff.1.html^raw2tiff.1.html^tiff2bw.1.html^tiff2pdf.1.html^tiff2ps.1.html^tiff2rgba.1.html^tiffcmp.1.html^tiffcp.1.html^tiffcrop.1.html^tiffdither.1.html^tiffdump.1.html^tiffgt.1.html^tiffinfo.1.html^tiffmedian.1.html^tiffset.1.html^tiffsplit.1.html -P C:/antworks/tiff-4.0.10/html/man/HtmlDoc.cmake

htmldoc: html/man/CMakeFiles/htmldoc
htmldoc: html/man/CMakeFiles/htmldoc.dir/build.make

.PHONY : htmldoc

# Rule to build all files generated by this target.
html/man/CMakeFiles/htmldoc.dir/build: htmldoc

.PHONY : html/man/CMakeFiles/htmldoc.dir/build

html/man/CMakeFiles/htmldoc.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\html\man && $(CMAKE_COMMAND) -P CMakeFiles\htmldoc.dir\cmake_clean.cmake
.PHONY : html/man/CMakeFiles/htmldoc.dir/clean

html/man/CMakeFiles/htmldoc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\html\man C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\html\man C:\antworks\tiff-4.0.10\build\html\man\CMakeFiles\htmldoc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : html/man/CMakeFiles/htmldoc.dir/depend

