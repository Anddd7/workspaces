#!/bin/bash

# --------------------------------------
# Basically, this script is preparing a WSL2 environment for the following steps.
# --------------------------------------

# enable systemd for wsl2
echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# **install tools via homebrew**

# install common packages
brew install git-lfs direnv dnsutils tree unzip jq make fzf graphviz cloc

# ntp, keep time in sync
brew install ntp
sudo service ntp start

# asdf, version manager
brew install asdf
