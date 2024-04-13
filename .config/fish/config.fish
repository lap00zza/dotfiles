# remove greeting
set -U fish_greeting

if status is-interactive
    # TODO: replace these with abbr later
    source ~/.bash_aliases
    
    # ESP IDF
    abbr -a get_idf . $HOME/esp/v5.2.1/esp-idf/export.fish
end

# starship.rs
starship init fish | source

