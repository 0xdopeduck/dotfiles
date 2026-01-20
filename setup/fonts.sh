#!/bin/bash

## Installing Fonts

mkdir -p $HOME/.local/share/fonts/
rm -rf $HOME/.local/share/fonts/*

#JetBrainsMono
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip -O $HOME/.local/share/fonts/JetBrainsMono.zip

unzip $HOME/.local/share/fonts/JetBrainsMono.zip -d $HOME/.local/share/fonts/

rm $HOME/.local/share/fonts/JetBrainsMono.zip

#FiraCode
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip -O $HOME/.local/share/fonts/FiraCode.zip

unzip $HOME/.local/share/fonts/FiraCode.zip -d $HOME/.local/share/fonts/

rm $HOME/.local/share/fonts/FiraCode.zip

fc-cache -fv
