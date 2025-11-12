add_library(ProjectM MODULE
    macos/iTunesAPI.cpp
    macos/iTunesAPI.h
    macos/iTunesVisualAPI.h
    getConfigFilename.cpp
    getConfigFilename.h
    iprojectM.hpp
    iprojectM.mm
    iprojectM_mac.mm
    )

set_target_properties(ProjectM PROPERTIES
    BUNDLE TRUE
    BUNDLE_EXTENSION bundle
    MACOSX_BUNDLE TRUE
    MACOSX_BUNDLE_INFO_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Resources/ProjectM-plugin-info.plist"
    OUTPUT_NAME "for iTunes"
    )

target_include_directories(ProjectM
    PRIVATE
    ${projectM4_INCLUDE_DIRS}
    )

target_link_libraries(ProjectM
    PRIVATE
    "-framework Cocoa"
    "-framework AppKit"
    "-framework CoreData"
    "-framework Foundation"
    libprojectM::projectM
    )
