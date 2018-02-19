#!/bin/sh

git init
echo "## Project Title" >> README.md
curl https://www.gitignore.io/api/node >> .gitignore
curl https://raw.githubusercontent.com/lap00zza/dotfiles/master/js/.eslintrc.json >> .eslintrc.json
curl https://raw.githubusercontent.com/lap00zza/dotfiles/master/.editorconfig >> .editorconfig
git add README.md .gitignore .eslintrc.json .editorconfig
echo "All done. Remember to run npm --init and customize the other files if necessary."
