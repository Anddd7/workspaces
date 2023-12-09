#!/bin/bash

# --------------------------------------
# Kubernetes developer loves
# --------------------------------------

plugins=(
  kubectl helm kubeseal
)

for plugin in ${plugins[@]}; do
  asdf plugin add $plugin
  asdf install $plugin latest
  asdf global $plugin latest
done

# krew
(
  set -x
  cd "$(mktemp -d)" &&
    OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
    ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
    KREW="krew-${OS}_${ARCH}" &&
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
    tar zxvf "${KREW}.tar.gz" &&
    ./"${KREW}" install krew
)

echo 'export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >>~/.zshrc

# k8s tools
kubectl krew install ctx
kubectl krew install ns
kubectl krew install grep

sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

mkdir -p ~/.oh-my-zsh/custom/completions
chmod -R 755 ~/.oh-my-zsh/custom/completions
ln -s /opt/kubectx/completion/_kubectx.zsh ~/.oh-my-zsh/custom/completions/_kubectx.zsh
ln -s /opt/kubectx/completion/_kubens.zsh ~/.oh-my-zsh/custom/completions/_kubens.zsh

echo "fpath=($ZSH/custom/completions $fpath)" >>~/.zshrc
