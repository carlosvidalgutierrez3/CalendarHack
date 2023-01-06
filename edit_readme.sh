#!/bin/bash

character="h"
filename="README.md"

for i in {1..5}
do
    echo "$i"

    echo -n "$character" >> "$filename"
    echo "Character '$character' added to $filename."

    sleep 1

    git add *

    sleep 2

    git commit -m "added another h"

    sleep 3

    random_hh=$((RANDOM % 13 + 10))
    random_mm=$((RANDOM % 49 + 10))
    random_ss=$((RANDOM % 49 + 10))
    time_clock="$random_hh:$random_mm:$random_ss"
    date_full="Tue Jan 6 $time_clock 2023"

    GIT_COMMITTER_DATE="$date_full +0200" git commit --amend --no-edit --date "$date_full +0200"

    sleep 3

    git push

    sleep 5


done


