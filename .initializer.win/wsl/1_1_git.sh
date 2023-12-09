#!/bin/bash

# --------------------------------------
# Here are some git configurations. (extracted, you can copy the snippet to your home)
# --------------------------------------

# customizations
mkdir -p ~/.githooks_global
curl -sSL "https://raw.githubusercontent.com/Anddd7/workspaces/main/.initializer.win/wsl/git/.gitconfig" >~/.gitconfig
curl -sSL "https://raw.githubusercontent.com/Anddd7/workspaces/main/.initializer.win/wsl/git/.gitignore_global" >~/.gitignore_global
curl -sSL "https://raw.githubusercontent.com/Anddd7/workspaces/main/.initializer.win/wsl/git/.githooks_global/pre-commit" >~/.githooks_global/pre-commit

# git-fuzzy
git clone https://github.com/bigH/git-fuzzy.git ~/bin/git-fuzzy
echo "export PATH=\"\$HOME/git-fuzzy/bin:\$PATH\"" >>~/.zshrc

# git-fzf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Anddd7/git-fzf/main/install.sh)"