#!/bin/sh
# This is my setup script for use with my new Amazon Lightsail instances. 
# NOTES: 
#   * Before running this edit /etc/pam.d/chsh for perms
sudo apt update
sudo apt upgrade -y

# My default apps
sudo apt install -y zsh htop nginx
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# To allow reverse ssh tunnel to bind to 0.0.0.0
echo "\n# My Custom Edit\nGatewayPorts clientspecified" | sudo tee -a /etc/ssh/sshd_config
# Cya!
sudo reboot
