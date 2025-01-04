function(add_git_submodule relative_dir)
    find_package(Git REQUIRED)

    set(FULL_DIR "${CMAKE_SOURCE_DIR}/${relative_dir}")

    if(NOT EXISTS ${FULL_DIR}/CMakeLists.txt)
        execute_process(
            COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive --
                    "${relative_dir}" WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
    endif()

    if(EXISTS ${FULL_DIR}/CMakeLists.txt)
        add_subdirectory(${FULL_DIR} "${CMAKE_BINARY_DIR}/${relative_dir}")
    else()
        message(WARNING "Submodule is NOT a cmake project: ${FULL_DIR}")
    endif()
endfunction()