# Create your dev environment in container

## Intro

Intro - <https://anddd7.mesh-shaped.top/#/post/2023/devcontainer-tutorial>

- 规范 <https://containers.dev/>
- 工具 <https://containers.dev/supporting>
- 扩展
  - 模版（基础镜像） <https://containers.dev/templates>
    - <https://github.com/devcontainers/images/tree/main/src>
  - 特性（环境依赖） <https://containers.dev/features>
    - <https://github.com/devcontainers/features/tree/main/src>

> 使用《构建工具》构建符合《规范》的开发《镜像》和《特性》，再使用《编辑工具》连接到容器进行开发

## Quickstart

<https://code.visualstudio.com/docs>
<https://code.visualstudio.com/docs/getstarted/introvideos>

- Create dev container via vs plugin - 通过 GUI 创建
  - 参数来自 template 仓库
  - 涵盖比较常用的开发环境: OS + 语言 + Cli 工具

- Create dev container via .devcontainer - 通过配置文件创建
  - 通过修改 基础镜像、配置、Dockerfile 来定制环境
  - 可以通过命令行 build、run 容器

## Cheatsheet

- features vs 安装脚本
  - feature 本身的结构也就是一个安装脚本，只是打成了 OCI 格式
  - feature 的修改会导致 rebuild，容器内**非卷**的数据会丢失
- 大而全的开发环境 vs 分散的开发环境
  - 是一个镜像包含所有工具 还是 多个镜像各自管理相关工具
  - 以项目为出发点，为每个项目（或生态圈）构建一个镜像
- 创建独立volumn
  - 在 rebuild 过程中保留数据
  - 挂载到多个容器中
- 绑定宿主机目录
  - 文件传输

## Recap

- 优势 & 劣势
- 使用场景
