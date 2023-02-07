# workspaces: standard your development environment

- OS
  - macos
  - windows/wsl
- plugins
  - os tools
  - dev environment (via devcontainers)

## Defination

### OS Tools

installed in the specific OS via command line or installer

e.g. VSCode, Fig, 1password, docker

### Dev Environment

create development environment for projects, can reuse, extend, modify and delete quickly with docker(devcontainers)

e.g. go1.18, go1.20, java11

## Techstack

- use toml to descrip tools and dev environments
- use go to download/install tools (or output the help links)
- use go to create dev environments with Dockerfile, devcontainers.json

## Workspaces

### Local

- MacOS
  - take notes or write blogs in markdown or plaintext
  - basic tools to do quick verification, no compile
- Windows
  - play games :)

> install via `.setup`

### Devcontainers

- workspaces (current)
  - learning, research, test and verify the solutions
  - multiple language, always latest version
- github_golang
  - dev environment for open-source repos, e.g. kubernetes/nocalhost/terraform
  - create environment and clone repos inside container
- github_node
  - dev env for frontend repos
  - create environment and clone repos inside container
- github_java
  - ...
- github_devops
  - ...

> install via `workspaces/*/.devcontainer`
  
### Devcontainers for (confidential) Projects

- xxxxxx
  - (TODO: still in macos, need to migrate to devcontainers)
  - individual vscode profile (enable/disable extensions)
  - individual devcontainers with all required tools

## Checklist

- vscode 中国区下载加速  
  - 将 host 改成 `vscode.cdn.azure.cn`
- share ssh to containers
  - `ssh-add $HOME/.ssh/github_rsa`
