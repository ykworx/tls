cmake_minimum_required(VERSION 2.8)
project(version)

# Version
if(NOT GIT_FOUND)
  find_package(Git)
endif()

add_custom_target( SubmarineGitVersion
  COMMAND cmake
  -D GIT_EXECUTABLE=${GIT_EXECUTABLE}
  -D INPUT_FILE=${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/version.c.in
  -D OUTPUT_FILE=${CMAKE_CURRENT_BINARY_DIR}/version.c
  -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/GetGitRevision.cmake
  )

execute_process(COMMAND ${GIT_EXECUTABLE} describe --tags --always --dirty=-dirty OUTPUT_VARIABLE GIT_REPO_VERSION)
string(REGEX REPLACE "(.*)\n$" "\\1" GIT_REPO_VERSION ${GIT_REPO_VERSION})
# Input and output files are extracted from parameters.
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/version.c.in 
  ${CMAKE_CURRENT_BINARY_DIR}/version.c)

set(version_file "${CMAKE_CURRENT_BINARY_DIR}/version.c")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(version ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c ${version_file})
add_dependencies(version SubmarineGitVersion)
