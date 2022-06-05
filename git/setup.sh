#!/bin/bash

source ./functions.sh

GIT_CONFIG_FILE=.gitconfig
WORK_GIT_CONFIG_FILE=.gitconfig-work

copy_file ./git/$GIT_CONFIG_FILE ~/$GIT_CONFIG_FILE
copy_file ./git/$WORK_GIT_CONFIG_FILE ~/$WORK_GIT_CONFIG_FILE
