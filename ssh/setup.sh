#!/bin/bash

if [ -z "$1" ]; then
    echo "Please pass your email address to the script"
    exit 1
fi

SSH_CONFIG=~/.ssh/config
if [[ ! -f $SSH_CONFIG ]]; then
    echo "Creating file $SSH_CONFIG"
fi

EMAIL=$1

ssh-keygen -t rsa -b 4096 -C "$EMAIL"
