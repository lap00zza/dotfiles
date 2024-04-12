# Just going to use my bash aliases because I am used to those
source ~/.bash_aliases

# remove greeting
set -U fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship.rs
starship init fish | source

