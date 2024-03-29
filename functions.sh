#!/bin/bash

wait_for_key_press_to_exit () {
    echo "Press any key to continue"
    while [ true ] ; do
        read -t 3 -n 1
        if [ $? = 0 ] ; then
            exit ;
        else
            echo "waiting for the keypress"
        fi
    done
}

create_empty_file () {
    FILE=$1

    echo "Creating empty file $FILE"
    touch $FILE
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

copy_file () {
    SOURCE=$1
    DESTINATION=$2

    if [[ -f $DESTINATION ]]; then
        echo "Removing existing file at $DESTINATION"
        rm $DESTINATION
    fi

    echo "Copying $SOURCE to $DESTINATION"
    cp -f $SOURCE $DESTINATION
}
