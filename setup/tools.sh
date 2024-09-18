#!/bin/bash

status="tools have been installed."
count=0
if [ ! -d "$HOME/tools" ]
then
    mkdir -p $HOME/tools
fi

if [ ! `apt list --installed golang 2>/dev/null | wc -l` == 2 ]
then
    sudo apt install -y golang
fi

# Installing Katana
if [ ! -d "$HOME/go/bin/katana" ]
then
    go install github.com/projectdiscovery/katana/cmd/katana@latest
    ((count+=1))
    status="Katana - ${status}"
fi


#Installing httpx
if [ ! -d "$HOME/go/bin/httpx" ]
then
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    ((count+=1))
    status="httpx - ${status}"
fi

#Installing LinkFInder
if [ ! -d "$HOME/tools/LinkFinder" ]
then
    git clone https://github.com/GerbenJavado/LinkFinder.git $HOME/tools/LinkFinder
    ((count+=1))
    status="LinkFinder - ${status}"
fi
