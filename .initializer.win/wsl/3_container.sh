#!/bin/bash

# podman
sudo apt -y install podman

# k3s
curl -sfL https://get.k3s.io | sh -

# export kubeconfig
export KUBECONFIG=~/.kube/config_k3s
mkdir ~/.kube 2> /dev/null
sudo k3s kubectl config view --raw > "$KUBECONFIG"
chmod 600 "$KUBECONFIG"
