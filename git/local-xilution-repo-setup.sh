#!/bin/bash

set -eu

REPOS_DIR=~/Repositories
XILUTION_DIR=$REPOS_DIR/Xilution
GITHUB_DIR=$XILUTION_DIR/GitHub

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

if [[ ! -d $GITHUB_DIR ]]; then
  echo "Making directory $GITHUB_DIR"
  mkdir $GITHUB_DIR
  echo "Made directory $GITHUB_DIR"
fi
