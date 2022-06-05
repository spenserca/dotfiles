#!/bin/bash

source ./functions.sh

./scripts/create_directories.sh

# setup bash files
./bash/setup.sh

# setup git files
./git/setup.sh

wait_for_key_press_to_exit
