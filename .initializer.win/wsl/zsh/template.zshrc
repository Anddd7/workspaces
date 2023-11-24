export ZSH="$HOME/.oh-my-zsh"

# -----------------------------------------
# |               zsh setting             |
# -----------------------------------------

ZSH_THEME="cloud"

plugins=(
  # quick tool
  z sudo
  # prompt
  zsh-autosuggestions kube-ps1
  # alias / computation
  git kubectl terraform aws azure asdf
  # hooks
  direnv
)

# setting for kube_ps1
RPROMPT='$(kube_ps1)'
export KUBE_PS1_SYMBOL_DEFAULT="☸"

source $ZSH/oh-my-zsh.sh

# -----------------------------------------
# |               env setting             |
# -----------------------------------------

# by default, use ~/bin to exec your self-made tools
export PATH="$HOME/bin:$PATH"

export http_proxy="http://proxy_server:proxy_port"
export https_proxy="http://proxy_server:proxy_port"
export ftp_proxy="http://proxy_server:proxy_port"
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# assemble kubeconfig
export KUBECONFIG=$(ls -1 ~/.kube/config_* | paste -sd ":" -)

# assemble exec-path
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/snap/bin:$PATH"

# -----------------------------------------
# |               alias setting           |
# -----------------------------------------

alias tg=terragrunt
alias docker=podman
alias docker-compose=podman-compose

# -----------------------------------------
# |               quick functions         |
# -----------------------------------------

b64d() {
  echo "$1" | base64 -d
}
b64e() {
  echo "$1" | base64 -e
}
