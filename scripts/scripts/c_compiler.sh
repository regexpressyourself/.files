#!/bin/bash
function cCompiler {
  for i in *.out
  do
    echo "rm $i"
    rm $i
  done
  for i in *.c
  do
    echo "gcc -Wall -std=gnu99 $i -o ${i%.c}.out"
    gcc -Wall "$i" -std=gnu99 -o "${i%.c}.out"
  done
}
cCompiler;

