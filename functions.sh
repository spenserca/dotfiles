#!/bin/bash

create_empty_file () {
    FILE=$1

    echo "Creating empty file $FILE"
    touch $FILE
}

create_directory () {
    DIRECTORY=$1

    if [[ ! -d $DIRECTORY ]]; then
        echo "Making directory $DIRECTORY"
        mkdir $DIRECTORY
    fi
}

link_file () {
    SOURCE=$1
    DESTINATION=$2

    if [[ ! -f $DESTINATION ]]; then
        create_empty_file $DESTINATION
    fi

    if [[ ! -e $DESTINATION ]]; then
        echo "Creating link for $DESTINATION"
        ln -s $SOURCE $DESTINATION
    elif [[ -e $DESTINATION ]]; then
        echo "Removing unlinked file and creating link for $DESTINATION"
        rm $DESTINATION
        ln -s $SOURCE $DESTINATION
    fi
}