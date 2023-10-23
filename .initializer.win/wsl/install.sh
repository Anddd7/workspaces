#!/bin/bash

sudo apt-get update

# Install zsh
sudo apt install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# podman
sudo apt-get -y install podman

# asdf
# apt install curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
