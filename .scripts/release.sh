#!/bin/bash

# Usage ./scripts/release.sh

today=$(date +"%F-%s")
branch="develop"

#git checkout develop
#
#git pull --rebase origin develop
#
#git checkout -b "$branch"
#
#git push -u origin "$branch"

gh pr create --base master --head "$branch" --label release --label feature --title "Release $today" --fill "$@"

#git checkout develop