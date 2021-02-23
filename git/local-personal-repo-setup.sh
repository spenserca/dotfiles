#!/bin/bash

set -eu

REPOS_DIR=~/repos
PERSONAL_DIR=$REPOS_DIR/personal

if [[ ! -d $REPOS_DIR ]]; then
  echo "Making directory $REPOS_DIR"
  mkdir $REPOS_DIR
  echo "Made directory $REPOS_DIR"
fi

if [[ ! -d $PERSONAL_DIR ]]; then
  echo "Making directory $PERSONAL_DIR"
  mkdir $PERSONAL_DIR
  echo "Made directory $PERSONAL_DIR"
fi
