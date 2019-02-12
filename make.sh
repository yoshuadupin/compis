#!/bin/bash

  # Exits if $1.flex does not exist
  if [ ! -f ./$1.flex ]; then

    echo The source file $1.flex does not exist.
    exit

  fi

  echo Compiling... 
  echo

  # Remove compile file of $1.flex
  if [ -f ./$1.java ]; then
  
    set -e
    echo Remove $1.java
    echo
    rm $1.java

  fi

  # Remove trash compile file of $1.flex
  if [ -f ./$1.java~ ]; then

    echo Remove $1.java~
    echo
    rm $1.java~

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
