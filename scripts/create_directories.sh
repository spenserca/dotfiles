#!/bin/bash

create_directory () {
    DIRECTORY=$1

    if [[ ! -d $DIRECTORY ]]; then
        echo "Making directory $DIRECTORY"
        mkdir $DIRECTORY
    fi
}

DIRECTORIES=(
  ~/repos
  ~/repos/personal
  ~/developer/work
)

for DIR in ${DIRECTORIES[@]}; do
  create_directory $DIR
done
