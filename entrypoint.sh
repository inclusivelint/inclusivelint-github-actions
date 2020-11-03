#!/bin/bash

function define_base_path() {
    if [[ -z $GITHUB_SHA ]]; then
        BASE_PATH=~
    else
        BASE_PATH=/root
    fi
}

function write_customizations() {
    if [ -f "$FILE" ]; then
        cat $FILE >> ${BASE_PATH}/${DEST_FILE}
    else 
        echo "${FILE} not found!"
        exit 1
    fi
}

define_base_path

if [ -z $1 ]; then
    echo "No customized words added to inclusivelint!"
else
    FILE=$1
    DEST_FILE=.inclusivelint/outputRelation.txt
    write_customizations
fi

if [ -z $2 ]; then
    echo "No ignored words added to inclusivelint."
else
    FILE=$2
    DEST_FILE=.inclusivelint/.inclusivelintignore
    write_customizations
fi

inclusivelint $GITHUB_WORKSPACE
