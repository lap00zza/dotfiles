# set LOCALE to contain utf-8
set -gx LANG "en_IN.utf-8"

# Make FZF use FD (https://github.com/sharkdp/fd)
set -gx FZF_DEFAULT_COMMAND fd --type file --follow --hidden --color=always --max-depth 5
set -gx FZF_DEFAULT_OPTS --ansi
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# fzf.fish options
set -gx fzf_fd_opts --follow --hidden --max-depth 5

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
    tmux send-keys -t "devenv" "gping google.com" Enter

    tmux splitw -v -p 75
    sleep 0.1
    tmux send-keys -t "devenv" "cd ~/Projects" Enter

    tmux selectp -t 0
    tmux splitw -v -p 25
    sleep 0.1
    tmux send-keys -t "devenv" "node" Enter

    tmux selectp -t 3
    tmux attach -t "devenv"
end

if status is-interactive
    # TODO: replace these with abbr later
    source ~/.bash_aliases

    # ESP IDF
    abbr -a get_idf . $HOME/esp/v5.2.1/esp-idf/export.fish

    # starship.rs
    starship init fish | source

    # enable transient prompt    
    enable_transience
end
