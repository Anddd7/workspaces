#!/bin/bash

# --------------------------------------
# Container environment, if you don't use docker
# --------------------------------------

# 1. Install 'Rancher-Desktop' to host k3s in an independent wsl instance
# 2. Enable wsl integratopm to expose the docker socket and kube config to your wsl
# 3. Install docker cli, kubectl to access the environment which created by rancher desktop

# docker
brew install docker

# assemble kubeconfig
echo 'export KUBECONFIG=$(ls -1 ~/.kube/config_* | paste -sd ":" -)' >>~/.zshrc
