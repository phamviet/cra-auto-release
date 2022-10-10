#!/usr/bin/env bash

set -xe

echo RUNNING FROM "$0"

npm run build

# shellcheck disable=SC2046
npm version $(cat ./VERSION) -m "Bump version [skip ci]"

