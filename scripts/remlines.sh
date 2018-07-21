#!/bin/bash

################################## remlines ####################################
#                                                                              #
# Description                                                                  #
#                                                                              #
#     Reads the entire contents of the specified file and removes all lines    #
#     matching the specified regular expression, then prints the remaining     #
#     lines to standard output.                                                #
#                                                                              #
# Invocation                                                                   #
#                                                                              #
#     remlines file expression                                                 #
#                                                                              #
# Parameters                                                                   #
#                                                                              #
#     file                                                                     #
#         The file to read from                                                #
#                                                                              #
#     expression                                                               #
#         The regular expression to match lines against                        #
#                                                                              #
################################################################################

# usage
if [ $# -ne 2 ]; then
    echo $0: usage: $0 file expression
    exit 1
fi

# aliases
file=$1
expression=$2

# use sed to strip lines
cat $file | sed --expression=$exp

