#!/usr/bin/env bash

set -xe

echo RUNNING FROM "$0"

npm run build

VERSION=$(cat ./VERSION)

# shellcheck disable=SC2046
npm --no-git-tag-version version "$VERSION"
git comit -am "Bump package.json version to v${VERSION} [skip ci]"
