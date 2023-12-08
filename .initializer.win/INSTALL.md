# Windows Setup

## Windows installation

### Enable windows features

- hyper-v
- wsl

### Install required apps

- Logseq
- Visual Studio Code
- Keepass
- Vargrunt
- VirtualBox
- uTools
- WSL

### Config git

#### .gitconfig

```toml
[user]
name = Anddd7
email = liaoad_space@sina.com
[init]
defaultBranch = main
[core]
autocrlf = input
[credential]
helper = store

[filter "lfs"]
clean = git-lfs clean -- %f
process = git-lfs filter-process
required = true
smudge = git-lfs smudge -- %f
```

#### ssh

generate key

```powershell
ssh-keygen -t ed25519 -C "your_email@example.com"
```

configure ssh identifier (if needed, in proxy environment)

```toml
Host github.com
  Hostname ssh.github.com
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_ed25519
  Port 443
```

## WSL installation

### Git & SSH

```sh
cp -r /mnt/c/Users/your-user-name/.ssh ~/.ssh
chmod 600 ~/.ssh/id_ed25519
```

git clone this repo to `~/workspaces`

### Installation

follow the installation sh
