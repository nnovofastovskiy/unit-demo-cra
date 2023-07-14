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