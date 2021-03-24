#!/bin/bash

source ./functions.sh

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

# setup bash files

BASH_ALIASES_DESTINATION=~/.bash_aliases
BASH_ALIASES_SOURCE=~/repos/personal/dotfiles/bash/.bash_aliases

BASH_FUNCTIONS_DESTINATION=~/.bash_functions
BASH_FUNCTIONS_SOURCE=~/repos/personal/dotfiles/bash/.bash_functions

BASH_PROFILE_DESTINATION=~/.bash_profile
BASH_PROFILE_SOURCE=~/repos/personal/dotfiles/bash/.bash_profile

BASHRC_DESTINATION=~/.bashrc
BASHRC_SOURCE=~/repos/personal/dotfiles/bash/.bashrc

create_empty_file ~/.local_aliases
create_empty_file ~/.local_bashrc
link_file $BASH_ALIASES_SOURCE $BASH_ALIASES_DESTINATION
link_file $BASH_FUNCTIONS_SOURCE $BASH_FUNCTIONS_DESTINATION
link_file $BASH_PROFILE_SOURCE $BASH_PROFILE_DESTINATION
link_file $BASHRC_SOURCE $BASHRC_DESTINATION