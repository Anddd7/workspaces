#!/bin/bash

# wsl settings
echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

sudo apt-get update

# zsh
sudo apt -y install zsh
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# git lfs
sudo apt intall -y git-lfs
# others ...
sudo apt install -y direnv dnsutils tree unzip jq make
sudo snap install yq

echo "-------------------------------"
echo "please overwrite the git and ssh config, then reboot the wsl"
echo "-------------------------------"
