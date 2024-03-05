#!/bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
mkdir -p ~/.local/bin
rm -rf ~/.local/bin/nvim-linux64
tar -C ~/.local/bin -xzf nvim-linux64.tar.gz
rm -rf nvim-linux64.tar.gz
