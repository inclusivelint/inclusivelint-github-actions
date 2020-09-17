#!/bin/bash

echo "HOME"
ls /github/home
echo "WORK"
ls /github/workspace
echo "FLOW"
ls /github/workflow

inclusivelint $GITHUB_WORKSPACE