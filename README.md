# CookNixvim

一个使用 Nix 构建的模块化 Neovim 配置。

## 目录结构

- core/  
  编辑器的基础配置（选项、快捷键、自动命令等）

- neovide/
  neovide的简单配置（光标动画，ui缩放快捷键）

- plugins/  
  按功能划分的插件模块（LSP、DAP、UI、AI 等）

## 启动速度说明

禁用dashborad该插件，可大幅提升首页加载速度（不影响打开文件速度）。如不需要，请fork该仓库注释掉该插件或移除，以提升加载速度。

## 使用方式

```bash
nix run github:Youthdreamer/CookNixvim

```
