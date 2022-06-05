#!/bin/bash

source ./functions.sh

GIT_CONFIG_FILE=.gitconfig
WORK_GIT_CONFIG_FILE=.gitconfig-work
PERSONAL_GIT_CONFIG_FILE=.gitconfig-personal

copy_file ./git/$GIT_CONFIG_FILE ~/$GIT_CONFIG_FILE
# TODO: take work email/name in as parameters and inject into config
copy_file ./git/$WORK_GIT_CONFIG_FILE ~/$WORK_GIT_CONFIG_FILE
copy_file ./git/$PERSONAL_GIT_CONFIG_FILE ~/$PERSONAL_GIT_CONFIG_FILE
