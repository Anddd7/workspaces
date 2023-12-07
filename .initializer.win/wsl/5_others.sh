#!/bin/bash

# terraform cache
mkdir -p ~/.terraform.d/plugin-cache
echo 'plugin_cache_dir = "$HOME/.terraform.d/plugin-cache"' >~/.terraformrc

# devcontainer
npm install -g @devcontainers/cli

# git-fuzzy
git clone https://github.com/bigH/git-fuzzy.git ~/bin/git-fuzzy
# add the executable to your path
echo "export PATH=\"\$HOME/git-fuzzy/bin:\$PATH\"" >>~/.zshrc

# git-fzf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Anddd7/git-fzf/main/install.sh)"
