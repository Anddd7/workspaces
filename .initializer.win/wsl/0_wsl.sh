#!/bin/bash

# --------------------------------------
# Basically, this script is preparing a WSL2 environment for the following steps.
# --------------------------------------

# enable systemd for wsl2
echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

# install common packages
sudo add-apt-repository ppa:rmescandon/yq
sudo apt-get update

sudo apt install -y git-lfs direnv dnsutils tree unzip jq make fzf graphviz cloc 
sudo apt install -y yq

# keep time in sync
sudo apt install -y ntp
sudo service ntp start
