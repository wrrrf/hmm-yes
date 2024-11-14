#!/bin/bash
type_a_word() {
  string_to_print=""
  string=$1
  for (( i=0; i<${#string}; i++ )); do
    char="${string:$i:1}"  # Extract the character at position $i
    string_to_print=$string_to_print$char
    echo -ne "\r$string_to_print"
    sleep 0.07
  done
  echo
}
