# set LOCALE to contain utf-8
set -gx LANG "en_IN.utf-8"

# Make FZF use FD (https://github.com/sharkdp/fd)
set -gx FZF_DEFAULT_COMMAND "fd --type file --follow --hidden --color=always"
set -gx FZF_DEFAULT_OPTS "--ansi"
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

# remove greeting
set -U fish_greeting

# Launches TMUX with my preferred layout
function devenv
    # btop minimum size 80 x 24
    tmux new-session -d -s "devenv"
    tmux selectp -t 0
    tmux send-keys -t "devenv" "btop" Enter

    tmux splitw -h -p 44
    tmux send-keys -t "devenv" "ping 192.168.1.1 -O" Enter

    tmux splitw -v -p 75
    tmux send-keys -t "devenv" "ls" Enter

    tmux selectp -t 0
    tmux splitw -v -p 24
    tmux send-keys -t "devenv" "python3" Enter

    tmux selectp -t 3
    tmux attach -t "devenv"
end

if status is-interactive
    # TODO: replace these with abbr later
    source ~/.bash_aliases
    
    # ESP IDF
    abbr -a get_idf . $HOME/esp/v5.2.1/esp-idf/export.fish
end

# starship.rs
starship init fish | source

