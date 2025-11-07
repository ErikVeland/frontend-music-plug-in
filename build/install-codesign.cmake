set(CODESIGN_IDENTITY "-")
set(PROJECTM_PLUGIN_BUNDLE_DIR "Library/iTunes/iTunes Plug-ins/ProjectM.bundle")

if(NOT CODESIGN_IDENTITY STREQUAL "")
    message(STATUS "Codesigning plug-in bundle with identity \"${CODESIGN_IDENTITY}\"")
    execute_process(COMMAND
        codesign -v -s "${CODESIGN_IDENTITY}" -f "${CMAKE_INSTALL_PREFIX}/${PROJECTM_PLUGIN_BUNDLE_DIR}"
        COMMAND_ERROR_IS_FATAL ANY
        )
endif()
