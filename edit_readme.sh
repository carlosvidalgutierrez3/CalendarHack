#!/bin/bash

character="h"
filename="README.md"

if [ ! -f "$filename" ]; then
    echo "File $filename does not exist."
    exit 1
fi

echo -n "$character" >> "$filename"
echo "Character '$character' added to $filename."

sleep 1

git add *

sleep 2

git commit -m "added another h"

sleep 3

GIT_COMMITTER_DATE="Mon Dec 5 20:46:10 2022 +0200" git commit --amend --no-edit --date "Mon Dec 5 20:46:10 2022 +0200"

