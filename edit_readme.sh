#!/bin/bash

character="h"
filename="README.md"

# Days of the month
days=(1 2 3 4 7 11 15 16 17)

for day in "${days[@]}"
do

for i in {1..5}
do
    echo "$i"

    echo -n "$character" >> "$filename"
    echo "Character '$character' added to $filename."

    # sleep 1

    git add *

    # sleep 1

    git commit -m "added another h"

    # sleep 1

    random_hh=$((RANDOM % 13 + 10))
    random_mm=$((RANDOM % 49 + 10))
    random_ss=$((RANDOM % 49 + 10))
    time_clock="$random_hh:$random_mm:$random_ss"
    date_full="Tue Aug $day $time_clock 2023"

    GIT_COMMITTER_DATE="$date_full +0200" git commit --amend --no-edit --date "$date_full +0200"

    # sleep 1


done
    git push

    # sleep 5
done

