#!/bin/bash
# The script *edit_readme.sh* will add git commits in the specified dates,
# allowing you to, for example, represent text in your github calendar.

# Each commit will add one character (h) to the specified filename
character="h"
filename="README.md"

# Days of the month to commit
days=(1 2 3 4 7 11 15 16 17)
# Month and year to commit
month="Aug"
year="2023"
# CET summer-adjusted timezone (UTC+2)
timezone="+0200"

for day in "${days[@]}"
do

# Number of commits. In this case 5 for each date
for i in {1..5}
do
    echo "$i"

    echo -n "$character" >> "$filename"
    echo "Character '$character' added to $filename."

    git add *

    git commit -m "added another h"

    # Generate random time of the day (number greater than 10 to obtain a two-digit value)
    random_hh=$((RANDOM % 13 + 10))
    random_mm=$((RANDOM % 49 + 10))
    random_ss=$((RANDOM % 49 + 10))
    time_clock="$random_hh:$random_mm:$random_ss"
    date_full="Tue $month $day $time_clock $year" # the week day "Tue" has no effect

    # Change commit date
    GIT_COMMITTER_DATE="$date_full $timezone" git commit --amend --no-edit --date "$date_full $timezone"


done
    git push

done

