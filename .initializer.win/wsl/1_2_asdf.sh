#!/bin/bash

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# cli, sdk and runtime
plugins=(
  golang nodejs
  terraform packer
  kubectl helm kubeseal
  awscli aws-iam-authenticator eksctl
  velero argocd
)

for plugin in ${plugins[@]}; do
  asdf plugin add $plugin
  asdf install $plugin latest
  asdf global $plugin latest
done

# python installation
# prerequsite
sudo apt install -y build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
# installation
asdf plugin add python
asdf install python 3.12.0
asdf global python 3.12.0
asdf reshim python
# ansible setting
echo "ansible\n" >~/.default-python-packages

# nodejs post update
asdf nodejs update nodebuild
