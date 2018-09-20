#!/bin/sh
# This is my setup script for use with my new Amazon Lightsail instances. 
# NOTES: 
#   * Before running this edit /etc/pam.d/chsh for perms
sudo apt update
sudo apt upgrade -y

# My default apps
sudo apt install -y zsh htop nginx

# NodeJS
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# To allow reverse ssh tunnel to bind to 0.0.0.0
# echo "\n# My Custom Edit\nGatewayPorts clientspecified" | sudo tee -a /etc/ssh/sshd_config

# For the tasty oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Cya!
# sudo reboot
