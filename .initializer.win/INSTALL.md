# Windows Setup

## Windows: Windows Features

> Optional Features -> More Windows Features

- Hyper-v
- Virtual Machine Platform
- Windows Subsystem for Linux

## Windows: Install apps

- Logseq
- Visual Studio Code
- Keepass
- Vargrunt
- VirtualBox
- uTools
- Windows Terminal
- WSL2
  - wsl_update_x64.msi
  - [wsl-vpnkit.tar.gz](https://github.com/sakai135/wsl-vpnkit?tab=readme-ov-file#install)
- Font: JetBrainsMono

### Other Apps

- Rancher Desktop
- Hoppscotch
- Browser Extension - login account to sync
  - GoFullPage
  - Authenticator
  - ChatGPT
  - Immersive Translate 即时翻译
  - MarkDownload
  - SwitchyOmega
  - ModHeader
  - Screen Shader
  - Automa 网页自动化

### Other Settings

- 键盘灵敏度
- 时钟 -> 世界时钟

## WSL: Prerequisites

### Git: ssh

- generate ssh key

```powershell
ssh-keygen -t ed25519 -C "your_email@example.com"
```

- configure ssh identifier `~/.ssh/config`

```toml
Host github.com
  Hostname ssh.github.com
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_ed25519
  Port 443
```

## WSL: Installation

- `git clone git@github.com:Anddd7/workspaces.git ~/workspaces_root`
- follow the *.sh to install everything you need
