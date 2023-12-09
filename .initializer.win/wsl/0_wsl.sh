#!/bin/bash

# --------------------------------------
# Basically, this script is preparing a WSL2 environment for the following steps.
# --------------------------------------

# enable systemd for wsl2
echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

sudo apt-get update
# install common packages
sudo apt install -y git-lfs direnv dnsutils tree unzip jq make fzf graphviz cloc 
# ntp, keep time in sync
sudo apt install -y ntp
sudo service ntp start

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
