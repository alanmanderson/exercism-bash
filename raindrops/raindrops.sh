#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
    count="${1}"
    raindrops=""
    if ! (( $count % 3 )); then
        raindrops+="Pling"
    fi
    if ! (( $count % 5 ));  then
        raindrops+="Plang"
    fi
    if ! (( $count % 7 )); then
        raindrops+="Plong"
    fi
    if [ -z $raindrops ]; then
        raindrops="$count"
    fi 
    echo $raindrops
    exit 0
}

main "$@"

