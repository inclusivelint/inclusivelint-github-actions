#!/bin/bash

DIR=~/.inclusivelint
if [ -d "$DIR" ]; then
    echo "$DIR exists."
else
    echo "$DIR does not exist. Creating..."
    mkdir $DIR
fi

FILE=$ADDITIONAL_WORDS
if [ -f "$FILE" ]; then
    echo "$FILE exists. Including additional words to the linter."
    cat $FILE >> ~/.inclusivelint/outputRelation.txt
fi

FILE=$IGNORE_WORDS
if [ -f "$FILE" ]; then
    echo "$FILE exists. Including list of ignored words."
    cat $FILE >> ~/.inclusivelint/.inclusivelintignore
fi

inclusivelint $GITHUB_WORKSPACE
