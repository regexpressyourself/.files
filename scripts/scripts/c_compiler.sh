#!/bin/bash
function cCompiler {
  for i in *.out
  do
    echo "rm $i"
    rm $i
  done
  for i in *.c
  do
    echo "gcc -Wall $i -o ${i%.c}.out"
    gcc -Wall "$i" -o "${i%.c}.out"
  done
}
cCompiler;

