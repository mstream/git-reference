#!/usr/bin/env bash

dir=/tmp/book

git worktree add /tmp/git-reference gh-pages
mdbook build
rm -rf "${dir}/*"
cp -rp book/* "${dir}/"
cd "${dir}"
git add -A
git commit -m "$1"
git push origin gh-pages
