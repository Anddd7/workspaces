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
	@./exists HiddenBar /Applications/Hidden\ Bar.app "https://github.com/dwarvesf/hidden"
# 密码箱
	@./exists 1Password /Applications/1Password.app "'App Store'"
	@./exists iterm2 /Applications/iTerm.app https://iterm2.com/downloads.html/
	@./exists vscode /Applications/Visual\ Studio\ Code.app https://code.visualstudio.com/download/
	@./exists hammerspoon /Applications/Hammerspoon.app https://www.hammerspoon.org/
	@./exists logseq /Applications/Logseq.app "https://github.com/logseq/logseq/releases"
	@./exists wechat /Applications/WeChat.app "'App Store'"
	@./exists wechat /Applications/Google\ Chrome.app  "'App Store'"
required: _required colima

colima:
	@./brew docker
	@./brew docker-compose
	@./brew colima

_recommend:
	@echo list of recommended tools
	@
	@./exists fig /Applications/Fig.app "https://fig.io/user-manual/install"
	@./exists Lens /Applications/Lens.app "https://docs.k8slens.dev/getting-started/install-lens/"
	@./exists KeyCastr /Applications/KeyCastr.app "https://github.com/keycastr/keycastr"
	@./exists Apifox /Applications/Apifox.app "https://www.apifox.cn/"
	@./binary asdf "asdf version" https://asdf-vm.com/guide/getting-started.html
# @./binary gvm "gvm version" "https://github.com/moovweb/gvm"
# @./exists nvm ~/.nvm "https://github.com/nvm-sh/nvm"
# @./binary fvm "fvm --version" "https://fvm.app/docs/getting_started/installation"
recommend: _recommend

_optional:
	@echo list of optional tools
	@
# @./exists GoodNotes /Applications/GoodNotes.app ""
	@./exists RunCat /Applications/RunCat.app ""
	@./exists PicGo /Applications/PicGo.app ""
# @./exists BloomRPC /Applications/BloomRPC.app ""
	@./exists VirtualBox /Applications/VirtualBox.app ""
	@./exists OBS /Applications/OBS.app ""
	@./exists Sourcetree /Applications/Sourcetree.app ""
optional: _optional

# post configure

hammerspoon-post:
	@./hammerspoon/post

zsh-post:
	@./zsh/post

asdf-post:
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
