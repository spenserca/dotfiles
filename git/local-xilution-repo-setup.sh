#!/bin/bash

set -eu

REPOS_DIR=~/repos
XILUTION_DIR=$REPOS_DIR/xilution

if [[ ! -d $REPOS_DIR ]]; then
  echo "Making directory $REPOS_DIR"
  mkdir $REPOS_DIR
  echo "Made directory $REPOS_DIR"
fi

if [[ ! -d $XILUTION_DIR ]]; then
  echo "Making directory $XILUTION_DIR"
  mkdir $XILUTION_DIR
  echo "Made directory $XILUTION_DIR"
fi
