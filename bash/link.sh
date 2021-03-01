#!/bin/bash

. ./functions.sh

# setup bash files

BASH_ALIASES_DESTINATION=~/.bash_aliases
BASH_ALIASES_SOURCE=~/repos/personal/dotfiles/bash/.bash_aliases
BASH_PROFILE_DESTINATION=~/.bash_profile
BASH_PROFILE_SOURCE=~/repos/personal/dotfiles/bash/.bash_profile
BASHRC_DESTINATION=~/.bashrc
BASHRC_SOURCE=~/repos/personal/dotfiles/bash/.bashrc

create_empty_file ~/.local_aliases
create_empty_file ~/local_bashrc
link_file $BASH_ALIASES_SOURCE $BASH_ALIASES_DESTINATION
link_file $BASH_PROFILE_SOURCE $BASH_PROFILE_DESTINATION
link_file $BASHRC_SOURCE $BASHRC_DESTINATION