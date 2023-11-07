export ZSH="$HOME/.oh-my-zsh"

# -----------------------------------------
# |               zsh setting             |
# -----------------------------------------

ZSH_THEME="cloud"

plugins=(git zsh-autosuggestions z asdf kube-ps1)

# setting for kube_ps1
RPROMPT='$(kube_ps1)'
export KUBE_PS1_SYMBOL_USE_IMG=true

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

# -----------------------------------------
# |               alias setting           |
# -----------------------------------------

alias tg=terragrunt
alias tf=terraform

alias docker=podman
alias docker-compose=podman-compose

alias k=kubectl

source <(kubectl completion zsh)
complete -F __start_kubectl k

eval "$(direnv hook zsh)"
