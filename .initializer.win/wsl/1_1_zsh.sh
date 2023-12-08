#!/bin/bash

# --------------------------------------
# Setup and customized your zsh
# --------------------------------------

sudo apt -y install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# git-fzf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Anddd7/git-fzf/main/install.sh)"