# Install script for directory: /Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/build/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "MusicPlugin" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents/MacOS" TYPE MODULE FILES "/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/build/src/libProjectM.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents/MacOS/libProjectM.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents/MacOS/libProjectM.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents/MacOS/libProjectM.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents/MacOS/libProjectM.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "MusicPlugin" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents" TYPE FILE RENAME "Info.plist" FILES "/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/src/Resources/ProjectM-plugin-info.plist")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "MusicPlugin" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents" TYPE FILE FILES "/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/src/Resources/PkgInfo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "MusicPlugin" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Library/iTunes/iTunes Plug-ins/ProjectM.bundle/Contents/Resources/presets/" TYPE DIRECTORY FILES "/Users/veland/Downloads/libprojectM-4.1.5/presets" REGEX "/[^/]*\\.md$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "MusicPlugin" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/build/install-codesign.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/veland/Downloads/libprojectM-4.1.5/frontend-music-plug-in-master/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
