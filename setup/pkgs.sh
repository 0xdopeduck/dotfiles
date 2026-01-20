#!/bin/bash

# Install Packages

# sudo apt install -y stow \
sudo pacman -Sy stow \
fd \
fzf		\
ripgrep		\
zoxide		\
jq		\
htop		\
lsd		\

## Starship
#curl -sS https://starship.rs/install.sh | sh
