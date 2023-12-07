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
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/snap/bin:$PATH"

# assemble kubeconfig
export KUBECONFIG=$(ls -1 ~/.kube/config_* | paste -sd ":" -)

source <(curl -sSL "https://raw.githubusercontent.com/Anddd7/workspaces/main/.initializer.win/wsl/zsh/customized.zshrc")
source <(curl -sSL "https://raw.githubusercontent.com/Anddd7/git-fzf/main/commit-msg.sh")

# split and load the rest of the scripts
# source ~/snowflake.zshrc
# source ~/credentials.zshrc
