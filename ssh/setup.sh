#!/bin/bash

if [ -z "$1" ]; then
    echo "Please pass your email address to the script"
    exit 1
fi

EMAIL=$1

ssh-keygen -t rsa -b 4096 -C "$EMAIL"