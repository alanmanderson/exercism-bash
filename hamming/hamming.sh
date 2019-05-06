#!/usr/bin/env bash

set -o errexit
set -o nounset

usage="Usage: hamming.sh <string1> <string2>"

main() {
    if [ "$#" -ne 2 ]; then
        echo $usage
        exit 1
    fi
    str1="${1}"
    str2="${2}"
    if (( ${#str1} != ${#str2})); then
        echo "left and right strands must be of equal length"
        exit 1
    fi
    distance=0
    for (( i=0; i<${#str1}; i++ )); do
        if [ "${str1:$i:1}" != "${str2:$i:1}" ]; then
            (( distance+=1 ))
        fi
    done
    echo $distance
    exit 0
}

main "$@"

