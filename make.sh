#!/bin/bash

  # Exits if $1.flex does not exist
  if [ ! -f ./$1.flex ]; then

    echo The source file $1.flex does not exist.
    exit

  fi

  echo Compiling... 
  echo

  # Remove compile file of $1.flex
  if [ -f ./Lexical.java ]; then
  
    set -e
    echo Remove Lexical.java
    echo
    rm Lexical.java

  fi

  # Remove trash compile file of Lexical.flex
  if [ -f ./Lexical.java~ ]; then

    echo Remove Lexical.java~
    echo
    rm Lexical.java~

  fi

  # Compile $1.flex
  echo Compile $1.flex
  echo
  jflex $1.flex
  echo

  # Compile Main.java
  echo Compile Java main file
  echo
  javac Main.java

  echo All Compiled!

#touch make.sh && chmod +x make.sh
