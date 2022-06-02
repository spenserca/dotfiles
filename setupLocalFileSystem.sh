#!/bin/bash

source ./functions.sh

# setup notes structure

create_directory ~/notes

# setup repository structure

REPOS_DIR=~/repos
PERSONAL_DIR=$REPOS_DIR/personal
WORK_DIR=$REPOS_DIR/work

create_directory $REPOS_DIR
create_directory $PERSONAL_DIR
create_directory $WORK_DIR

# setup bash files

BASH_ALIASES_SOURCE=./bash/.bash_aliases
BASH_ALIASES_DESTINATION=~/.bash_aliases

BASH_FUNCTIONS_SOURCE=./bash/.bash_functions
BASH_FUNCTIONS_DESTINATION=~/.bash_functions

BASH_PROFILE_SOURCE=./bash/.bash_profile
BASH_PROFILE_DESTINATION=~/.bash_profile

BASHRC_SOURCE=./bash/.bashrc
BASHRC_DESTINATION=~/.bashrc

copy_file $BASH_ALIASES_SOURCE $BASH_ALIASES_DESTINATION
copy_file $BASH_FUNCTIONS_SOURCE $BASH_FUNCTIONS_DESTINATION
copy_file $BASH_PROFILE_SOURCE $BASH_PROFILE_DESTINATION
copy_file $BASHRC_SOURCE $BASHRC_DESTINATION

wait_for_key_press_to_exit