#!/bin/bash

function define_base_path() {
    if [[ -z $GITHUB_SHA ]]; then
        BASE_PATH=~
    else
        BASE_PATH=/root
    fi
}

define_base_path

DIR=${BASE_PATH}/.inclusivelint
if [ -d "$DIR" ]; then
    echo "$DIR exists."
else
    echo "$DIR does not exist. Creating..."
    mkdir $DIR
fi

FILE=$ADDITIONAL_WORDS
if [ -f "$FILE" ]; then
    echo "$FILE exists. Including additional words to the linter."
    cat $FILE >> ${BASE_PATH}/.inclusivelint/outputRelation.txt
    tail ${BASE_PATH}/.inclusivelint/outputRelation.txt
fi

FILE=$IGNORE_WORDS
if [ -f "$FILE" ]; then
    echo "$FILE exists. Including list of ignored words."
    cat $FILE >> ${BASE_PATH}/.inclusivelint/.inclusivelintignore
    tail ${BASE_PATH}/.inclusivelint/.inclusivelintignore
fi

inclusivelint $GITHUB_WORKSPACE
