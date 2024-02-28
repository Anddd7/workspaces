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
kubectl krew install hns

# list
kubectl krew install grep        # list resources by keywords and namespace
kubectl krew install custom-cols # customize output with templates
kubectl krew install fuzzy       # fuzzy search

kubectl krew install access-matrix # rbac
kubectl krew install ctr           # container
kubectl krew install history       # rollout history
kubectl krew install tree

# get
kubectl krew install view-cert
kubectl krew install view-secret
kubectl krew install viewnode # overview of node+pod+container

# watch
kubectl krew install kclock

# describe
kubectl krew install pod-inspect
kubectl krew install status

# logs
kubectl krew install plogs # filter
kubectl krew install kail  # tail/stream logs
# kubectl krew install capture

# top
kubectl krew install ktop
kubectl krew install resource-capacity # capacity overview
kubectl krew install view-allocations

# apply
kubectl krew install confirm # confirm-then-apply
kubectl krew install dup     # quick duplication

# helper/debug
kubectl krew install explore   # api-resources document
kubectl krew install podevents # capture events
kubectl krew install oomd      # capture oom pods
kubectl krew install unlimited # capture unlimited resources
kubectl krew install outdated  # check outdated images
kubectl krew install sick-pods # check unhealthy pods
# kubectl krew install kopilot
