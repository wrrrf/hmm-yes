#!/bin/bash
type_a_string() {
  string_to_print=""
  for i in $(seq 0 $((${#string} - 1))); do
    char="${string:$i:1}"  # Extract the character at position $i
    string_to_print=$string_to_print$char
    echo "$string_to_print"
    sleep 0.1
    tput cr
    tput cl
  done
}
