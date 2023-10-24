#!/bin/bash

echo -e "[boot]\nsystemd=true" | sudo tee /etc/wsl.conf

sudo apt-get update

# zsh
sudo apt -y install zsh
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "-------------------------------"
echo "please overwrite the git and ssh config, then reboot the wsl"
echo "-------------------------------"
