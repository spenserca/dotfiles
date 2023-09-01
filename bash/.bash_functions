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

    echo "Cleaning up merged branches"
    clean_merged
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

    echo "Cleaning up branches merged with $DEFAULT_BRANCH"
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

clean_non_main_branches() {
    git checkout main

    git branch -D $(git branch)
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
