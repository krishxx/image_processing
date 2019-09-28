# Install script for directory: C:/antworks/tiff-4.0.10/contrib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/tiff")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/antworks/tiff-4.0.10/build/contrib/addtiffo/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/dbs/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/iptcutil/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/mfs/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/pds/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/ras/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/stream/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/tags/cmake_install.cmake")
  include("C:/antworks/tiff-4.0.10/build/contrib/win_dib/cmake_install.cmake")

endif()

