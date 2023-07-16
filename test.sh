#!/bin/bash

export NODE_ENV=$(git rev-list origin/master..origin/pr-test)
commits=$(node test.js)
# echo $commits
# export NODE_ENV=${{commits}}
echo $commits
# commmits=$(echo $commmits | tr '\n' ' ')
# IFS=' ' read -r -a array <<< "$commmits"

# commits=$(git rev-list origin/master..origin/pr-test)
# IFS=' ' read -r -a commitsArray <<< "$commits"
# commitsObject="{\"include\":[
#     $(for commit in ${array[@]}; do
#         echo {\"sha\":\"$commit\"}
#     done)
# ]}"
# echo "matrix=$commitsObject"