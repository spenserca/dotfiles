#!/bin/bash

source ./functions.sh

FILES_TO_COPY=(
  .bash_aliases
  .bash_functions
  .bash_profile
  .bashrc
)

for FILE in ${FILES_TO_COPY[@]}; do
  copy_file ./bash/$FILE ~/$FILE
done

EMPTY_FILES=(~/.local_aliases ~/.local_bashrc)

for FILE in ${EMPTY_FILES[@]}; do
  create_empty_file $FILE
done
