#!/bin/bash

# wsl settings
echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

sudo add-apt-repository ppa:rmescandon/yq
sudo apt-get update
# others ...
sudo apt install -y git-lfs direnv dnsutils tree unzip jq make fzf graphviz cloc 
sudo apt install -y yq

# sync timestamp of system
sudo apt install -y ntp
sudo service ntp start
