export ZSH="$HOME/.oh-my-zsh"

# -----------------------------------------
#                 zsh plugins
# -----------------------------------------

ZSH_THEME="cloud"

plugins=(
  # quick tool
  z sudo qrcode gitignore asdf
  # prompt
  kube-ps1 zsh-autosuggestions zsh-completions
  # prompt (zsh-users)
  zsh-interactive-cd zsh-navigation-tools
  # alias / computation
  git kubectl terraform aws azure
  # hooks
  direnv
)

# setting for kube_ps1
RPROMPT='$(kube_ps1)'
export KUBE_PS1_SYMBOL_DEFAULT="☸"

source $ZSH/oh-my-zsh.sh

# -----------------------------------------
#                 env loading
# -----------------------------------------

# by default, use ~/bin to exec your self-made tools
export PATH="$HOME/bin:$PATH"

# pipx
export PATH="$HOME/.local/bin:$PATH"

# krew
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# kubeconfig
# export KUBECONFIG=$(ls -1 ~/.kube/config_* | paste -sd ":" -)

# snap
# export PATH="/snap/bin:$PATH"

# shell toolchains
# source "https://github.com/Anddd7/rubber-duck/tree/main/b64/kw/main.sh"
# source "https://github.com/Anddd7/rubber-duck/tree/main/b64/b64/main.sh"
# source "https://github.com/Anddd7/rubber-duck/tree/main/b64/zsh/main.sh"
# source "https://github.com/Anddd7/rubber-duck/tree/main/b64/tmpnb/main.sh"

# then
# - source scripts
# - export credentials
# - ...
