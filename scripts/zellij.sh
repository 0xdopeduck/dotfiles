#!/bin/bash

curl -LO https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
sudo rm -rf /opt/zellij
sudo tar -C /opt -xzf zellij-x86_64-unknown-linux-musl.tar.gz
rm -rf zellij-x86_64-unknown-linux-musl.tar.gz 
