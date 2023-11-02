#!/bin/bash

# cli, sdk and runtime
plugins=(
  golang nodejs  
  terraform packer
  kubectl helm kubeseal 
  awscli aws-iam-authenticator eksctl
  velero
)

for plugin in ${plugins[@]}; do
  asdf plugin add $plugin
  asdf install $plugin latest
  asdf global $plugin latest
done

# prerequisite
sudo apt install -y build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
# special setting for python
echo "ansible\n" > ~/.default-python-packages
# installation
asdf plugin add python
asdf install python 3.12.0
asdf global python 3.12.0

# terraform cache
mkdir -p ~/.terraform.d/plugin-cache
chmod -R 755 ~/.terraform.d/plugin-cache
echo 'plugin_cache_dir = "$HOME/.terraform.d/plugin-cache"' > ~/.terraformrc