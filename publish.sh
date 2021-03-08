#!/usr/bin/env bash

git worktree add /tmp/git-reference gh-pages
mdbook build
rm -rf /tmp/book/*
cp -rp book/* /tmp/book/
cd /tmp/book
git add -A
git commit -m "$1"
git push origin gh-pages
