#!/bin/bash

# --------------------------------------
# Install the language environment
# --------------------------------------

plugins=(
  golang
  # python tools
  pipx poetry
  # others
  yarn
)

for plugin in ${plugins[@]}; do
  asdf plugin add $plugin
  asdf install $plugin latest
  asdf global $plugin latest
done

# Python: special installation
# ----------------------------
# 0. replace source with mirror if needed
# ~/.asdf/plugins/python/pyenv/plugins/python-build/share/python-build/3.12.0
# - https://www.python.org/ftp -> https://mirrors.huaweicloud.com

# 1. dependencies
sudo apt install -y build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# 2. install
asdf plugin add python
asdf install python 3.12.1
asdf global python 3.12.1
asdf reshim python

# Nodejs: special installation
# ----------------------------
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf nodejs update nodebuild
