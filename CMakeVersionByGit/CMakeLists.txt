cmake_minimum_required(VERSION 2.8)
project(version)

# Version
if(NOT GIT_FOUND)
  find_package(Git)
endif()
add_custom_target( GetGitRevision
  COMMAND cmake
  -D GIT_EXECUTABLE=${GIT_EXECUTABLE}
  -D INPUT_FILE=${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/version.c.in
  -D INPUT_FILE=${CMAKE_CURRENT_BINARY_DIR}/version.c
  -P ${CMAKE_CURRENT_SOURCE_DIR}/camke/modules/GetGitRevision.cmake
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(version ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c)
add_dependencies(version GetGitRevision)
