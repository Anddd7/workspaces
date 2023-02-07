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

## Notes

- VSCode 中国区下载加速  
  - 将地址中的`/stable`前换成`vscode.cdn.azure.cn`  
- Linux  
  - 开发工具  
    - zsh, oh-my-zsh  
    - docker  
    - minikube  
    - vscode  
- Mac  
  - 开发工具 - 同 Linux  
    - docker  
      - Docker for Desktop(只能个人使用) [商用不再免费](https://www.docker.com/blog/updating-product-subscriptions/)  
        - [podman](https://podman.io/)  
          - What is Podman? Podman is a daemonless container engine for developing, managing, and running OCI Containers on your Linux System. Containers can either be run as root or in rootless mode.
       Simply put: alias docker=podman.  
        - [lima](https://github.com/lima-vm/lima) + [containerd](https://containerd.io)  
          - lima: Linux virtual machines  
            - Lima launches Linux virtual machines with automatic file sharing, port forwarding, and containerd.  
            - Lima can be considered as a some sort of unofficial "macOS subsystem for Linux", or "containerd for Mac".  
            - Lima is expected to be used on macOS hosts, but can be used on Linux hosts as well.  
        - [colima](https://github.com/abiosoft/colima)  
          - powered by lima  
          - Colima means Containers in Lima. Since Lima is aka Linux on Mac. By transitivity, Colima can also mean Containers on Linux on Mac.  
          -  
       ``` zsh
              colima start -m 4 --mount $HOME/workspace/:w --mount $HOME/.gradle
       ```
  - 虚拟机  
    - Virtual Box  
  - 其他工具  
    - Alfred  
    - Cubox  
    - Fig  
    - Hammerspoon  
    - 1password  
- Windows  
  - 分区  
    - C盘：主分区，至少保留 200G+的空间  
    - D 盘：游戏、媒体、大文件  
  - 开发工具 - 本体  
    - Docker for Win(只能个人使用)  
    - wsl2  
    - Git  
    - VS Code  
    - Win Terminal  
    - choco（windows 包管理工具）  
  - 语言环境 - wsl 内同 Linux  
  - 开发工具 - wsl 内同 Linux  
