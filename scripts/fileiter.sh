#!/bin/bash

################################## fileiter ####################################
#                                                                              #
# Description                                                                  #
#                                                                              #
#     Iterates over each file in the specified directory, piping the entire    #
#     contents of each file into the specified executable's standard input.    #
#                                                                              #
# Invocation                                                                   #
#                                                                              #
#     fileiter command directory                                               #
#                                                                              #
# Parameters                                                                   #
#                                                                              #
#     command                                                                  #
#         The executable that will have each file's contents piped into it     #
#                                                                              #
#     directory                                                                #
#         The path to the directory containing the files to be iterated over   #
#                                                                              #
################################################################################

# usage
if [ $# -ne 2 ]; then
    echo $0: usage: $0 command directory
    exit 1
fi

# aliases
cmd=$1
path=$2

# iterate over each file in provided dir
for filename in $path/*; do
    $cmd < $filename
done

