#!/bin/bash

set -eu

BASH_ALIASES_FILE=~/.bash_aliases
BASH_PROFILE_FILE=~/.bash_profile
BASHRC_FILE=~/.bashrc

if [[ ! -e $BASH_ALIASES_FILE ]]; then
  echo "Creating link for $BASH_ALIASES_FILE"
  ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_aliases $BASH_ALIASES_FILE
elif [[ -e $BASH_ALIASES_FILE ]] && [[ ! -h $BASH_ALIASES_FILE ]]; then
  echo "Removing unlinked file and creating link for $BASH_ALIASES_FILE"
  rm $BASH_ALIASES_FILE
  ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_aliases $BASH_ALIASES_FILE
fi

if [[ ! -e $BASH_PROFILE_FILE ]]; then
  echo "Creating link for $BASH_PROFILE_FILE"
  ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_profile $BASH_PROFILE_FILE
elif [[ -e $BASH_PROFILE_FILE ]] && [[ ! -h $BASH_PROFILE_FILE ]]; then
  echo "Removing unlinked file and creating link for $BASH_PROFILE_FILE"
  rm $BASH_PROFILE_FILE
  ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bash_profile $BASH_PROFILE_FILE
fi

if [[ ! -e $BASHRC_FILE ]]; then
  echo "Creating link for $BASHRC_FILE"
  ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bashrc $BASHRC_FILE
elif [[ -e $BASHRC_FILE ]] && [[ ! -h $BASHRC_FILE ]]; then
  echo "Removing unlinked file and creating link for $BASHRC_FILE"
  rm $BASHRC_FILE
  ln -s ~/Repositories/Personal/GitHub/dotfiles/bash/.bashrc $BASHRC_FILE
fi
