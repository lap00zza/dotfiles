#!/bin/sh

git init
touch README.md && echo "## Project Title" >> README.md
touch .gitignore && curl https://www.gitignore.io/api/node >> .gitignore
touch .eslintrc.json && curl https://raw.githubusercontent.com/lap00zza/dotfiles/master/.eslintrc.json >> .eslintrc.json
touch .editorconfig && curl https://raw.githubusercontent.com/lap00zza/dotfiles/master/.editorconfig >> .editorconfig
git add README.md .gitignore .eslintrc.json .editorconfig
npm init
