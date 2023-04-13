# top:fig
# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# ———————————————————————————————————————————————————————————————————————————————————————————

### ------------------------------------------------------------------------------------------------
### | ZSH
### ------------------------------------------------------------------------------------------------

HOME="/Users/anddd7"

export LC_ALL=en_US.UTF-8 
export LANG=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

plugins=(git zsh-autosuggestions zsh-z)

source $ZSH/oh-my-zsh.sh

### ------------------------------------------------------------------------------------------------
### | PATH / HOME
### ------------------------------------------------------------------------------------------------

# asdf
. ~/.asdf/plugins/java/set-java-home.zsh
. ~/.asdf/plugins/dotnet-core/set-dotnet-home.zsh

# nvm
# ❓❓❓deprecated: use asdf instead
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# gvm
# ❓❓❓deprecated: use asdf instead
[[ -s "$$HOME/.gvm/scripts/gvm" ]] && source "$$HOME/.gvm/scripts/gvm"

# dotnet
ln -sF $DOTNET_ROOT/dotnet /usr/local/bin/dotnet

# docker
export PATH="/usr/local/opt/libpq/bin:$PATH"
export DOCKER_HOST=unix://$HOME/.colima/docker.sock

# flutter
export PATH="$HOME/fvm/default/bin:$PATH"
export PATH="$PATH:$HOME/.pub-cache/bin"

# rvm
# ❓❓❓deprecated: use asdf instead
export PATH="$PATH:$HOME/.rvm/bin"

# android
export ANDROID_HOME="$HOME/Library/Android/sdk"

### ------------------------------------------------------------------------------------------------
### | ENVS
### ------------------------------------------------------------------------------------------------

export GO111MODULE=on 

### ------------------------------------------------------------------------------------------------
### | SHORTCUTS
### ------------------------------------------------------------------------------------------------

function code996() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/hellodigua/code996/master/bin/code996.sh)"
}

alias k=kubectl
source <(kubectl completion zsh)
complete -F __start_kubectl k

alias tg=terragrunt
alias tf=terraform

# ———————————————————————————————————————————————————————————————————————————————————————————

# bottom:fig
# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
