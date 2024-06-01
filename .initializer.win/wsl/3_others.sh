#!/bin/bash

# --------------------------------------
# Other optional tools, settings
# --------------------------------------

plugins=(
  # hashicorp
  terraform packer vault
  # aws
  awscli aws-iam-authenticator eksctl
  # cloud-native
  velero argocd rancher
)

for plugin in ${plugins[@]}; do
  asdf plugin add $plugin
  asdf install $plugin latest
  asdf global $plugin latest
done

# terraform cache
mkdir -p ~/.terraform.d/plugin-cache
chmod -R 755 ~/.terraform.d/plugin-cache
echo 'plugin_cache_dir = "$HOME/.terraform.d/plugin-cache"' >~/.terraformrc

# git-cz
npm install -g git-cz
asdf reshim nodejs

# pre-commit
pip install pre-commit
