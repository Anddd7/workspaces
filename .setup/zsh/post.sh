#!/bin/zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ZSH_PLUGINS="plugins=(git zsh-autosuggestions z)"

sed -i "s/plugins=(git)/${ZSH_PLUGINS}/g" ~/.zshrc
