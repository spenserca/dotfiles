#!/bin/bash

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

docker_clean() {
   TYPE_TO_CLEAN=$1
   
    if [[ $TYPE_TO_CLEAN = "i" || $TYPE_TO_CLEAN = "images" ]]; then
        echo "Cleaning up docker images"
        for id in $(docker images -aq);
        do
            echo "Removing docker image: $id"
            docker rmi $id
        done
    fi

    if [[ $TYPE_TO_CLEAN = "c" || $TYPE_TO_CLEAN = "containers" ]]; then
        echo "Cleaning up docker containers"
        for id in $(docker ps -aq);
        do
            echo "Removing docker container: $id"
            docker rmi $id
        done
    fi     
}

function caseys_commit() {
    # ISSUE_KEY #comment <Your commit comment text>
    ISSUE_KEY=$1
    COMMIT_MESSAGE=$2
    FULL_ISSUE_KEY="STRT2-$ISSUE_KEY"

    # validate parameters
    if [ -z "$ISSUE_KEY" ]; then
        echo "[ERROR] Pass the issue key as the first param to the function"
        return 1
    fi
    
    if ! [[ $FULL_ISSUE_KEY =~ ^STRT2-[0-9]+$ ]]; then
        echo "[ERROR] Issue key param does not match expected pattern ^STRT2-[0-9]+$"
        return 1
    fi

    if [ -z "$COMMIT_MESSAGE" ]; then
        echo "[ERROR]  Pass the commit message as the second param to the function"
        return 1
    fi

    # commit
    MESSAGE="$FULL_ISSUE_KEY #comment $COMMIT_MESSAGE"
    echo "[SUCCESS] Committing with message: $MESSAGE"
    git commit -m "$ISSUE_KEY #comment $COMMIT_MESSAGE"
}
