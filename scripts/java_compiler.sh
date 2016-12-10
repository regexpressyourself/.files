#!/bin/bash
function javaCompiler {
  if [ ! -d "class" ]; then
    mkdir "class";
  fi

  for i in *.java; do
    javac -d class $i;
  done

  changeDirDown;
  for j in *.class; do
    filename=$j
    a=${j%.*}
    echo $a
    if javap -public $a | fgrep 'public static void main'; then
      java $a
    fi
  done
  changeDirUp

}

function changeDirDown {
  cd class;
}
function changeDirUp {
  cd ..;
}

javaCompiler;

