#!/bin/bash

inclusivelint $GITHUB_WORKSPACE

# with:
#   user_dictionary: /.inclusivelint/.additionalwords
test -f /inclusivelint/additionalwords && echo /inclusivelint/additionalwords >> ~/.inclusivelint/outputRelation.txt

#   ignore_dictionary: /.inclusivelint/.inclusivelintignore
test -f /inclusivelint/inclusivelintignore && echo /inclusivelint/inclusivelintignore >> ~/.inclusivelint/.inclusivelintignore
