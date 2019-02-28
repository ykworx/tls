# Git executable is extracted from parameters.
execute_process(COMMAND ${GIT_EXECUTABLE} describe --tags --always --dirty=-dirty OUTPUT_VARIABLE GIT_REPO_VERSION)
string(REGEX REPLACE "(.*)\n$" "\\1" GIT_REPO_VERSION ${GIT_REPO_VERSION})
# Input and output files are extracted from parameters.
configure_file(${INPUT_FILE} ${OUTPUT_FILE})
