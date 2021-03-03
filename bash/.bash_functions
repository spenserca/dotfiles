#!/bin/bash

function helloworld() {
    echo "Hello World!"
}

# checkout default git branch
# pull new changes
# clean up merged branches
function gupdate() {
    ORIGIN_HEAD=$(git symbolic-ref refs/remotes/origin/HEAD)

    # tr: translate, squeeze or delete characters from stdin to stdout
    VALUES=($(echo $ORIGIN_HEAD | tr "/" "\n"))

    # arithmetic syntax: $(( math ))
    LAST_INDEX=$((${#VALUES[@]} - 1))
    DEFAULT_BRANCH=${VALUES[$LAST_INDEX]}

    echo "Switching to branch $DEFAULT_BRANCH"
    git checkout $DEFAULT_BRANCH

    echo "Pulling latest changes"
    git pull

    echo "Cleaning up stale branches"
    git branch --merged $DEFAULT_BRANCH | grep -v -e '$DEFAULT_BRANCH' -e '\*' |  xargs -r -n 1 git branch -d 
    git remote prune origin

    echo "Getting current branches"
    git branch -a
}