#!/bin/bash

create_directory () {
    DIRECTORY=$1

    if [[ ! -d $DIRECTORY ]]; then
        echo "Making directory $DIRECTORY"
        mkdir $DIRECTORY
    fi
}

DIRECTORIES=(
  ~/notes
  ~/repos
  ~/repos/personal
  ~/repos/work
)

for DIR in ${DIRECTORIES[@]}; do
  create_directory $DIR
done
