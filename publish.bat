#!/bin/bash

cd ./build
git add .

# Get commit message from user
read MSG

# Use generic commit message if none is given
if [ -z "$MSG" ]
then
    MSG="Published"
fi

# Commit and push
git commit -m "$MSG"
git push -u origin master
