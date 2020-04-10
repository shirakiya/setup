#!/bin/bash

set -eu

REPOS=./repo_list

while read line
do
  echo "ghq get ${line}..."
  ghq get git@github.com:${line}.git
done < $REPOS
