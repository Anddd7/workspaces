#!/bin/bash

# wsl settings
echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

sudo apt-get update
# others ...
sudo apt install -y git-lfs direnv dnsutils tree unzip jq make fzf dot cloc fzf
# others ...
sudo snap install yq

# sync timestamp of system
sudo apt install -y ntp
sudo service ntp start
