#!/bin/bash
set -e
cd ~/team-project/project
tail -n +2 developers.csv | while IFS=';' read -r id name username role hours
do
    mkdir -p "developers/$username"
    cp report.sh "developers/$username/report.sh"
done
