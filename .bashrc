# My .bashrc file
#
# My Environment:
# Shell: BASH (Git For Windows) (https://git-scm.com/download/win)
# Terminal: CMDER (https://github.com/cmderdev/cmder)
#
# Notes:
# Using `ln` requires running BASH as admin
#
# Check out all my dotfile on https://github.com/lap00zza/dotfiles

## Directory Navigation ##
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

## GIT ##
alias g="git"
alias gs="git status"
# format codes: https://git-scm.com/docs/pretty-formats
PrettyFormat="%C(yellow)%h%C(red)%d %C(reset)%s %C(blue)[%cN]"
alias gl="git log --pretty=format:'$PrettyFormat'"
alias gg="git log --pretty=format:'$PrettyFormat' --graph"

## LS ##
alias ll="ls -alh"
alias ls="ls --color=auto"

## Useful Locations ##
vscode="/e/Program Files/Microsoft VS Code/bin"
ffmpeg="/d/ffmpeg/bin"
PATH=$PATH:$vscode:$ffmpeg

## Enable Native Windows symlinks in Git Bash ##
export MSYS=winsymlinks:nativestrict
