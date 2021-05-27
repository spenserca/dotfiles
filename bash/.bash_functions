#!/bin/bash

get_default_branch() {
    MASTER_BRANCH=$(git branch -a | grep 'master')
    if [[ ! -z "$MASTER_BRANCH" ]]; then
        DEFAULT_BRANCH="master"
    else
        MAIN_BRANCH=$(git branch -a | grep 'main')

        if [[ ! -z "$MAIN_BRANCH" ]]; then
            DEFAULT_BRANCH="main"
        fi
    fi

    if [[ -z "$DEFAULT_BRANCH" ]]; then        
        echo "Did not find master/main branch"
        exit 1
    else
        echo $DEFAULT_BRANCH
    fi
}

get_branches() {
    echo "Getting current branches"
    git branch -a
}

gupdate() {
    DEFAULT_BRANCH=$(get_default_branch)

    echo "Switching to branch $DEFAULT_BRANCH"
    git checkout $DEFAULT_BRANCH

    echo "Pulling latest changes"
    git pull

    get_branches
}

clean_branch() {
    CURRENT_BRANCH=$(git branch --show-current)
    DEFAULT_BRANCH=$(get_default_branch)

    echo "Switching to $DEFAULT_BRANCH and cleaning up $CURRENT_BRANCH"
    git checkout $DEFAULT_BRANCH
    git branch -D $CURRENT_BRANCH
    
    get_branches
}

clean_merged() {
    DEFAULT_BRANCH=$(get_default_branch)

    echo "Cleaning up branches not merged with $DEFAULT_BRANCH"
    git branch --merged $DEFAULT_BRANCH | grep -v -e '$DEFAULT_BRANCH' -e '\*' |  xargs -r -n 1 git branch -D
    git remote prune origin

    get_branches    
}

clean_non_merged() {
    DEFAULT_BRANCH=$(get_default_branch)

    echo "Cleaning up branches not merged with $DEFAULT_BRANCH"
    git branch --no-merged $DEFAULT_BRANCH | grep -v -e '$DEFAULT_BRANCH' -e '\*' |  xargs -r -n 1 git branch -D
    git remote prune origin

    get_branches
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
            docker rm $id
        done
    fi     
}

caseys_commit() {
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
