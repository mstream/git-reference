#!/usr/bin/env bash

set -e

dir=/tmp/git-reference

rm -rf "${dir}"
mkdir -p "${dir}"
git worktree add -f "${dir}" gh-pages
mdbook build
rm -rf "${dir}/*"
cp -rp book/html/* "${dir}/"
cd "${dir}"
git add -A
git commit -m "Update"
git push origin gh-pages
