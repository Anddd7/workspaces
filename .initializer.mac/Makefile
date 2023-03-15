# https://formulae.brew.sh/
# https://formulae.brew.sh/cask/

REPO_DIR 				= $(shell git rev-parse --show-toplevel 2>/dev/null)
INITIALIZATION_PATH 	= $(REPO_DIR)/.initialization

metadata:
	@printf '*%.0s' {0..66}
	@echo

_required: 
	@echo list of required tools
	@
	@./exists zsh ~/.oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
# 隐藏不必要的菜单栏图标
	@./brewc hiddenbar
# 密码箱
	@./brewc 1password
	@./brewc iterm2
	@./brewc visual-studio-code
	@./brewc hammerspoon
	@./brewc logseq
	@./brewc wechat
	@./brewc google-chrome
required: _required colima

colima:
	@./brew docker
	@./brew docker-compose
	@./brew colima

_recommend:
	@echo list of recommended tools
	@
	@./brewc fig
	@./brewc lens
	@./brewc keycastr
	@./brewc apifox
	@./brew asdf
recommend: _recommend

_optional:
	@echo list of optional tools
	@
# @./exists GoodNotes /Applications/GoodNotes.app ""
	@./brewc runcat-plugins-manager
	@./brewc picgo
	@./brewc bloomrpc
	@./brewc virtualbox
	@./brewc obs
	@./brewc sourcetree
optional: _optional

all: required recommend optional

# post configure

hammerspoon-post:
	@./hammerspoon/post

zsh-post:
	@./zsh/post

asdf-post:
	@echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
	asdf plugin add awscli
	asdf plugin add azure-cli
	asdf plugin add flutter
	asdf plugin add golang
	asdf plugin add java
	asdf plugin add kotlin
	asdf plugin add nodejs
	asdf plugin add python
	asdf plugin add ruby
	asdf plugin add rust
	asdf plugin add terraform
	asdf plugin add terragrunt

.PHONY: hammerspoon vscode zsh brew exists binary
