#!/bin/bash

set -eu

GIT_CONFIG_FILE=~/.gitconfig

if [[ ! -e $GIT_CONFIG_FILE ]]; then
  echo "Creating link for $GIT_CONFIG_FILE"
  ln -s ~/Repositories/Personal/GitHub/dotfiles/git/.gitconfig $GIT_CONFIG_FILE
elif [[ -e $GIT_CONFIG_FILE ]] && [[ ! -h $GIT_CONFIG_FILE ]]; then
  echo "Removing unlinked file and creating link for $GIT_CONFIG_FILE"
  rm $GIT_CONFIG_FILE
  ln -s ~/Repositories/Personal/GitHub/dotfiles/git/.gitconfig $GIT_CONFIG_FILE
fi
