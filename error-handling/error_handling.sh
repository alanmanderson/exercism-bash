#!/usr/bin/env bash

set -o errexit
set -o nounset

usage="Usage: ./error_handling <greetee>"
paramCount=1

main() {
    if [ "$#" -ne $paramCount ]; then
        echo $usage
        exit 1
    fi
    person=${1}
    echo "Hello, ${person}"
}

main "$@"
