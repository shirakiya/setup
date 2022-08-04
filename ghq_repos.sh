#!/usr/bin/env bash

set -eu

REPO_FILE=./my_repos.txt

while read line
do
  echo "ghq get ${line}..."
  ghq get git@github.com:${line}.git
done < $REPO_FILE
