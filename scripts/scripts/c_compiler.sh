#!/bin/bash
function cCompiler {
  for i in *.c
  do
    echo "gcc -Wall $i -o ${i%.c}.out"
    gcc -Wall "$i" -o "${i%.c}.out"
  done
}
cCompiler;

