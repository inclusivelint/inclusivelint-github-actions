#!/bin/bash

echo "HOME"
ls /github/home
echo "WORK"
ls /github/workspace
echo "FLOW"
ls /github/workflow
echo $GITHUB_SHA

inclusivelint $GITHUB_WORKSPACE