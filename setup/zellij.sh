#!/bin/bash

curl -LO https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
rm -rf ~/.local/bin/zellij
sudo tar -C ~/.local/bin -xzf zellij-x86_64-unknown-linux-musl.tar.gz
rm -rf zellij-x86_64-unknown-linux-musl.tar.gz 
