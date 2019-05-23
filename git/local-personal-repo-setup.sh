#!/bin/bash

set -eu

REPOS_DIR=~/Repositories
PERSONAL_DIR=$REPOS_DIR/Personal
BITBUCKET_DIR=$PERSONAL_DIR/Bitbucket
CODECOMMIT_DIR=$PERSONAL_DIR/CodeCommit
GITHUB_DIR=$PERSONAL_DIR/GitHub
GITLAB_DIR=$PERSONAL_DIR/GitLab

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

if [[ ! -d $BITBUCKET_DIR ]]; then
  echo "Making directory $BITBUCKET_DIR"
  mkdir $BITBUCKET_DIR
  echo "Made directory $BITBUCKET_DIR"
fi

if [[ ! -d $CODECOMMIT_DIR ]]; then
  echo "Making directory $CODECOMMIT_DIR"
  mkdir $CODECOMMIT_DIR
  echo "Made directory $CODECOMMIT_DIR"
fi

if [[ ! -d $GITHUB_DIR ]]; then
  echo "Making directory $GITHUB_DIR"
  mkdir $GITHUB_DIR
  echo "Made directory $GITHUB_DIR"
fi

if [[ ! -d $GITLAB_DIR ]]; then
  echo "Making directory $GITLAB_DIR"
  mkdir $GITLAB_DIR
  echo "Made directory $GITLAB_DIR"
fi
