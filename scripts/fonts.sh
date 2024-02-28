#!/bin/bash

## Installing Fonts

mkdir $HOME/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip -O $HOME/.local/share/fonts/JetBrainsMono.zip

unzip $HOME/.local/share/fonts/JetBrainsMono.zip -d $HOME/.local/share/fonts/

rm $HOME/.local/share/fonts/JetBrainsMono.zip

fc-cache -fv
