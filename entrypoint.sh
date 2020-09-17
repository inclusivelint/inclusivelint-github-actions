#!/bin/bash

time=$(date)
echo "::set-output name=time::$time"

inclusivelint $GITHUB_WORKSPACE