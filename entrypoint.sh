#!/bin/bash

function define_base_path() {
    if [[ -z $GITHUB_SHA ]]; then
        BASE_PATH=~
    else
        BASE_PATH=/root
    fi
}

function write_customisations() {
    if [ -f "$FILE" ]; then
        cat $FILE >> ${BASE_PATH}/${DEST_FILE}
    fi
}

define_base_path

FILE=$1
DEST_FILE=.inclusivelint/outputRelation.txt
write_customisations

FILE=$2
DEST_FILE=.inclusivelint/.inclusivelintignore
write_customisations

inclusivelint $GITHUB_WORKSPACE
