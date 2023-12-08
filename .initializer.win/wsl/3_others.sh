#!/bin/bash

# terraform cache
mkdir -p ~/.terraform.d/plugin-cache
chmod -R 755 ~/.terraform.d/plugin-cache
echo 'plugin_cache_dir = "$HOME/.terraform.d/plugin-cache"' >~/.terraformrc

# devcontainer
# npm install -g @devcontainers/cli

# git-fuzzy
git clone https://github.com/bigH/git-fuzzy.git ~/bin/git-fuzzy
echo "export PATH=\"\$HOME/git-fuzzy/bin:\$PATH\"" >>~/.zshrc
