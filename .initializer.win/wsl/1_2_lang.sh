#!/bin/bash

# --------------------------------------
# Install the language, cli, sdk and runtime
# --------------------------------------

git clone https://github.com/asdf-vm/asdf.git ~/.asdf

plugins=(
  golang
  # terraform packer
  # kubectl helm kubeseal
  # awscli aws-iam-authenticator eksctl
  # velero argocd
)

for plugin in ${plugins[@]}; do
  asdf plugin add $plugin
  asdf install $plugin latest
  asdf global $plugin latest
done

# Python
# ----------------------------
# pre-requirements
sudo apt install -y build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

asdf plugin add python
asdf install python 3.12.1
asdf global python 3.12.1
asdf reshim python

# poetry
sudo apt install pipx
pipx install poetry


# nodejs
# ----------------------------
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf nodejs update nodebuild
