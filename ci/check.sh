#!/usr/bin/env sh
set -e
export PATH="node_modules/.bin:${PATH}"
npm install
script="ci/check-$1.sh"
if [ -x "${script}" ]; then
  "${script}"
else
  echo >&2 "${script} does not exist or is not executable"
  exit 1
fi
