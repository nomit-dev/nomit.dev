#!/usr/bin/env sh

# abort on errors
set -e

# Remove assets
rm -rf ./docs/.vuepress/dist

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

git push

cd -