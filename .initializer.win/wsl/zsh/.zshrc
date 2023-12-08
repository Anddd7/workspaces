export ZSH="$HOME/.oh-my-zsh"

# -----------------------------------------
#                 zsh plugins
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
#                 env loading
# -----------------------------------------

# by default, use ~/bin to exec your self-made tools
export PATH="$HOME/bin:$PATH"
# assemble exec-path
export PATH="/snap/bin:$PATH"

source <(curl -sSL "https://raw.githubusercontent.com/Anddd7/workspaces/main/scripts/alias")
