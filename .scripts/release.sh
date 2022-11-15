#!/bin/bash

# Usage ./scripts/release.sh

today=$(date +"%F %T")
branch="release/release-$today"

git checkout develop

git pull --rebase origin develop

git checkout -b $branch

git push -u origin $branch

gh pr create --base master --head $branch --label release --label enhancement --title "Release $today" --fill