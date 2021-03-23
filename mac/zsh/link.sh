#!/bin/zsh

. ./functions.sh

# setup zsh files

ZSH_ALIASES_DESTINATION=~/.zsh_aliases
ZSH_ALIASES_SOURCE=~/repos/personal/dotfiles/mac/zsh/.zsh_aliases

ZSH_FUNCTIONS_DESTINATION=~/.zsh_functions
ZSH_FUNCTIONS_SOURCE=~/repos/personal/dotfiles/mac/zsh/.zsh_functions

ZSH_PROFILE_DESTINATION=~/.zsh_profile
ZSH_PROFILE_SOURCE=~/repos/personal/dotfiles/mac/zsh/.zsh_profile

ZSHRC_DESTINATION=~/.zshrc
ZSHRC_SOURCE=~/repos/personal/dotfiles/mac/zsh/.zshrc

create_empty_file ~/.local_aliases
create_empty_file ~/.local_zshrc
copy_file $ZSH_ALIASES_SOURCE $ZSH_ALIASES_DESTINATION
copy_file $ZSH_FUNCTIONS_SOURCE $ZSH_FUNCTIONS_DESTINATION
copy_file $ZSH_PROFILE_SOURCE $ZSH_PROFILE_DESTINATION
copy_file $ZSHRC_SOURCE $ZSHRC_DESTINATION