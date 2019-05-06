#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
    person="${1-you}"
    echo "One for $person, one for me."
}

main "$@"
