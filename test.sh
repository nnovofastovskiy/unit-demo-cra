#!/bin/bash

> out.txt
message=$(git rev-list origin/master..origin/pr-test)
echo $message
echo "${#message[@]}"
message=$(echo $message | tr '\n' ' ')
# echo $message
echo "text=$message" >> out.txt

IFS=' ' read -r -a array <<< "$message"
echo array
echo "${#array[@]}"
# echo "${array}"

# echo "[" >> out.txt
# for commit in $(git rev-list origin/master..origin/pr-test); do
#     echo $commit, >> out.txt
# done
# echo "]" >> out.txt

commits=$(git rev-list origin/${{ github.base_ref }}..origin/${{ github.head_ref }})
IFS=' ' read -r -a commitsArray <<< "$message"
jq --compact-output --null-input '$ARGS.positional' --args -- "${commits[@]}
echo ${comArr[@]}
# commitsObject="{\"include\":[$(for commit in ${commitsArray[@]}; do
#         echo {\"sha\":\"$commit\"}
#     done)]}"
# echo "matrix=$commitsObject"