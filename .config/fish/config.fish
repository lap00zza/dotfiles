# set LOCALE to contain utf-8
set -gx LANG "en_IN.utf-8"

# Make FZF use FD (https://github.com/sharkdp/fd)
set -gx FZF_DEFAULT_COMMAND "fd --type file --follow --hidden --color=always"
set -gx FZF_DEFAULT_OPTS "--ansi"
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

# remove greeting
set -U fish_greeting

# Launches TMUX with my preferred layout
function devenv -d "Launch TMUX with my preferred layout containing btop, ping, python3 and home_dir"
    # btop minimum size 80 x 24
    # NOTE: sleep 0.1 after selecting pane to make sure the pane's shell is ready
    tmux new-session -d -s "devenv"
    tmux selectp -t 0
    sleep 0.1
    tmux send-keys -t "devenv" "btop" Enter

    tmux splitw -h -p 44
    sleep 0.1
    tmux send-keys -t "devenv" "ping 192.168.1.1 -O" Enter

    tmux splitw -v -p 75
    sleep 0.1
    tmux send-keys -t "devenv" "ls" Enter

    tmux selectp -t 0
    tmux splitw -v -p 24
    sleep 0.1
    tmux send-keys -t "devenv" "python3" Enter

    tmux selectp -t 3
    tmux attach -t "devenv"
end

# This function pushes my changes to my Github remote via SSH. 
#
# Q> Why not just use `git push origin`?
# A> Because github requires access tokens and I dislike copy pasting it a lot. Besides,
#    SSH is easier.
# Q> Why not add ssh as a remote?
# A> Because I don't like to pollute the remote list.
function ghp_ssh -d "Push local changes to gh remote via SSH"
    # parse username
    set -l gh_username (git remote -v | grep "fetch" | cut -d "/" -f4)
    # parse repository
    set -l gh_repo (git remote -v | grep "fetch" | cut -d "/" -f5 | cut -d " " -f1 | cut -d "." -f1)
    # 
    set -l repo_url "git@github.com:$gh_username/$gh_repo"
    echo "REPO URL (SSH) => $repo_url"
    git push $repo_url
    git pull
end

if status is-interactive
    # TODO: replace these with abbr later
    source ~/.bash_aliases
    
    # ESP IDF
    abbr -a get_idf . $HOME/esp/v5.2.1/esp-idf/export.fish
end

# starship.rs
starship init fish | source

