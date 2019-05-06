#!/usr/bin/env bash

@test "Say Hi!" {
  run bash hello_world.sh
  echo "$status"
  [ "$status" -eq 0 ]
  [ "$output" = "Hello, World!" ]
}
