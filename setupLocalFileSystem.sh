#!/bin/bash

set -eu

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

# setup bash files

BASH_ALIASES_DESTINATION=~/.bash_aliases
BASH_ALIASES_SOURCE=~/repos/personal/dotfiles/bash/.bash_aliases
BASH_PROFILE_DESTINATION=~/.bash_profile
BASH_PROFILE_SOURCE=~/repos/personal/dotfiles/bash/.bash_profile
BASHRC_DESTINATION=~/.bashrc
BASHRC_SOURCE=~/repos/personal/dotfiles/bash/.bashrc

link_file $BASH_ALIASES_SOURCE $BASH_ALIASES_DESTINATION
link_file $BASH_PROFILE_SOURCE $BASH_PROFILE_DESTINATION
link_file $BASHRC_SOURCE $BASHRC_DESTINATION

# setup notes structure

create_directory ~/notes

# setup repository structure

REPOS_DIR=~/repos
PERSONAL_DIR=$REPOS_DIR/personal

create_directory $REPOS_DIR
create_directory $PERSONAL_DIR

XILUTION_DIR=$REPOS_DIR/xilution

create_directory $XILUTION_DIR

CASEYS_DIR=$REPOS_DIR/caseys

create_directory $CASEYS_DIR