#!/bin/bash

if [ -z "$1" ]; then
    echo "Please pass the path to your generated ssh key"
    exit 1
fi

SSH_KEY_PATH=$1

eval "$(ssh-agent -s)"

ssh-add $SSH_KEY_PATH