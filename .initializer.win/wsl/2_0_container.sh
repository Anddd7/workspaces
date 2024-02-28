#!/bin/bash

# --------------------------------------
# Container environment, if you don't use docker
# --------------------------------------

# use `Rancher Desktop` to manage container&kubernetes automatically
# it packages docker, nerdctl, k3s
# just verify whether it's available in wsl as well

# export kubeconfig
export KUBECONFIG=~/.kube/config_k3s
mkdir ~/.kube 2>/dev/null
sudo k3s kubectl config view --raw >"$KUBECONFIG"
chmod 600 "$KUBECONFIG"

# assemble kubeconfig
echo 'export KUBECONFIG=$(ls -1 ~/.kube/config_* | paste -sd ":" -)' >>~/.zshrc
