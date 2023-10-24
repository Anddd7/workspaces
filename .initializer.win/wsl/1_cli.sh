#!/bin/bash

# zsh
sudo apt install zsh
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf


echo "-------------------------------"
echo "please overwrite the zsh config"
echo "-------------------------------"
