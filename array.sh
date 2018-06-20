#!/bin/bash

#Working with Command-Line-Arguments and Arrays
#PURPOSE - To store the command line arg(s) into an array and print it like an array. 

echo "arg1 :$1"
echo "arg2 :$2"
echo "arg3 :$3"

# ARGS=( "$@" )         # Parses $1,$2,$3,....$n to individual array elements like ARGS[0],ARGS[1],ARGS[2]...etc in ARGS
# ARGS=( $@ )           # Ditto
# ARGS=( $* )           # Ditto

ARGS=( "$*" )           # Will parse the entire $1,$2,$3,....$n into a single element in array; like ARGS[0] will have all $1,$2...etc

echo "Printing ARGS array"
echo "ARGS ARRAY CONTENT : ${ARGS[*]}"    # -> ${ARGS[@]}  works fine too!

echo "ARGS[0]: ${ARGS[0]}"
echo "ARGS[1]: ${ARGS[1]}"
echo "ARGS[2]: ${ARGS[2]}"
