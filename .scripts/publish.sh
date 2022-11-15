#!/usr/bin/env bash

echo RUNNING FROM "$0"

remote=${2}
branch=${3}

set -xe

git checkout develop
git merge --no-ff "$branch" -m "Merge branch $branch [skip ci]"
git push "$remote" develop