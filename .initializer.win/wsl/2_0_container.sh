#!/bin/bash

# podman
sudo apt -y install podman
pip3 install podman-compose
asdf reshim python

# k3s
curl -sfL https://get.k3s.io | sh -

# export kubeconfig
export KUBECONFIG=~/.kube/config_k3s
mkdir ~/.kube 2>/dev/null
sudo k3s kubectl config view --raw >"$KUBECONFIG"
chmod 600 "$KUBECONFIG"

# assemble kubeconfig
echo 'export KUBECONFIG=$(ls -1 ~/.kube/config_* | paste -sd ":" -)' >>~/.zshrc
