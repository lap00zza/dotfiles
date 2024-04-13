# useful aliases
alias ..="cd .."
alias ...="cd ../.."
alias whatsmyip="curl https://checkip.amazonaws.com"

# docker aliases
# I didn't add my user to the Docker group so I have to use "$sudo docker"
alias dcup="sudo docker compose up"
alias dcupd="sudo docker compose up -d" # -d = detached
alias dcdown="sudo docker compose down"
alias dcstop="sudo docker compose stop"
alias dcls="sudo docker compose ls"
alias dcps="sudo docker compose ps"
alias dce="sudo docker compose exec"
alias dsp="sudo docker system prune --all"

# tmux aliases
alias tma="tmux attach"
# force tmux to output UTF-8 which fixes the powerline
alias tmux="tmux -u"

# ESP IDF
# alias get_idf=". $HOME/esp/v5.2.1/esp-idf/export.sh"

