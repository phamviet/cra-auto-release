#!/bin/bash

# Usage ./scripts/release.sh

today=$(date +"%m-%d-%Y")

gh pr create --base master --head develop --label enhancement --title "Release $today" --fill