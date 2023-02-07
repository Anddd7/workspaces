# workspaces

- 配置开发主机
- 配置开发环境（共用的和非共用的）

- Platform
  - MacOS
  - Windows(+wsl)
- Tools
  - UI tools
    - IDE
    - Others
  - Command line tools
  - Others

# tech stack

- toml, go

```
asdf {
  golang {
    macos {
      pre { brew install coreutils }
      install { 
        asdf plugin-add golang https://github.com/kennyp/asdf-golang.git 
        asdf install golang 
      }
      post { }
    }
    help { https://github.com/kennyp/asdf-golang }
  }
  help { https://github.com/asdf-vm/asdf }
}
```

```toml
<!-- base -->
[golang]
provider=asdf


<!-- macos -->
[golang]
```

# use

```shell
workspaces init 
workspaces plan
workspaces apply
workspaces <plugin> install 
workspaces <plugin> uninstall
```

# others

- 使用场景  
  - 拿到一台新机器 不同系统 安装必要和软件  
  - 开启一个新项目 下载必要的依赖  
-  
- toml 定义ui工具和命令行工具清单  
- 通过统一入口下载必要  
-  
-  
-  
-  
- VSCode 中国区下载加速  
  - 将地址中的`/stable`前换成`vscode.cdn.azure.cn`  
-  
- Linx  
  - 语言环境  
    - 统一使用 [asdf-vm](https://asdf-vm.com/manage/versions.html#install-version) 管理可能出现多版本的东西  
      - *木有国内源*  
    - jvm 系  
      - java8, 11, 17  
      - clojure, lein  
    - go  
    - rust  
    - python, pip  
    - node, npm, yarn  
  - 开发工具  
    - zsh, oh-my-zsh  
    - docker  
    - minikube  
    - vscode  
- Mac  
  - 语言环境 - 同 Linux  
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
