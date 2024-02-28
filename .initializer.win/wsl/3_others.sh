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
  velero argocd
  # others
  yq
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
