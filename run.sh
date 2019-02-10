#!/bin/bash

  set -e

 ./make.sh $1

 # Exits if $2.txt does not exist
  if [ ! -f ./$2 ]; then

    echo The text file $2 does not exist.
    exit

  fi

  echo
  echo Running...
  echo
  java Main $2
  echo

#touch make.sh && chmod +x make.sh
