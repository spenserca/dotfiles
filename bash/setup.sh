#!/bin/bash

source ./functions.sh

BASH_ALIASES_SOURCE=./bash/.bash_aliases
BASH_ALIASES_DESTINATION=~/.bash_aliases

BASH_FUNCTIONS_SOURCE=./bash/.bash_functions
BASH_FUNCTIONS_DESTINATION=~/.bash_functions

BASH_PROFILE_SOURCE=./bash/.bash_profile
BASH_PROFILE_DESTINATION=~/.bash_profile

BASHRC_SOURCE=./bash/.bashrc
BASHRC_DESTINATION=~/.bashrc

create_empty_file ~/.local_aliases
create_empty_file ~/.local_bashrc
copy_file $BASH_ALIASES_SOURCE $BASH_ALIASES_DESTINATION
copy_file $BASH_FUNCTIONS_SOURCE $BASH_FUNCTIONS_DESTINATION
copy_file $BASH_PROFILE_SOURCE $BASH_PROFILE_DESTINATION
copy_file $BASHRC_SOURCE $BASHRC_DESTINATION
