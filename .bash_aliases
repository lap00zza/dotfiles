# useful aliases
alias ..="cd .."
alias ...="cd ../.."

# docker aliases
# I didn't add my user to the Docker group so I have to use "$sudo docker"
alias dcu="sudo docker compose up -d" # -d = detached
alias dcd="sudo docker compose down"
alias dcs="sudo docker compose stop"
alias dcls="sudo docker compose ls"
alias dcps="sudo docker compose ps"
alias dsp="sudo docker system prune --all"

# tmux aliases
alias tma="tmux attach"

# force tmux to output UTF-8 which fixes the powerline
alias tmux="tmux -u"
