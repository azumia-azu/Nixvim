# Nixvim 快捷键总览

本文根据当前仓库中的 Nix 配置与本机已安装插件文档整理，分为两层：

- 项目显式定义或覆盖的快捷键
- 插件内置的默认快捷键

- `leader` 键：`<Space>`
- 统计范围：`config/core`、`config/plugins/*`、`config/neovide`
- 插件默认键位来源：本机 `/nix/store` 中对应插件的 `README`、`doc/*.txt`、`defaults.lua`

## 1. 全局通用

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `j` | `n` | 按屏幕行向下移动（无计数时等价 `gj`） | `config/core/keymap.nix` |
| `k` | `n` | 按屏幕行向上移动（无计数时等价 `gk`） | `config/core/keymap.nix` |
| `<C-s>` | `i/n/v/s` | 保存文件 | `config/core/keymap.nix` |
| `<C-a>` | `i/n` | 全选 | `config/core/keymap.nix` |
| `<leader>Y` | `v` | 复制到系统剪贴板 | `config/core/keymap.nix` |
| `<leader>D` | `v` | 剪切到系统剪贴板 | `config/core/keymap.nix` |
| `<leader>qq` | `n` | 保存并退出编辑器 | `config/core/keymap.nix` |
| `<A-j>` | `n` | 当前行下移 | `config/core/keymap.nix` |
| `<A-k>` | `n` | 当前行上移 | `config/core/keymap.nix` |
| `<A-j>` | `v` | 选中块下移 | `config/core/keymap.nix` |
| `<A-k>` | `v` | 选中块上移 | `config/core/keymap.nix` |
| `s` | `n/x/o` | Flash 跳转 | `config/plugins/utils/flash.nix` |
| `S` | `n/x/o` | Flash Treesitter 跳转 | `config/plugins/utils/flash.nix` |
| `r` | `o` | Flash 远程跳转 | `config/plugins/utils/flash.nix` |
| `R` | `o/x` | Flash Treesitter 搜索 | `config/plugins/utils/flash.nix` |
| `gl` | `n/x/o` | Flash 按行跳转 | `config/plugins/utils/flash.nix` |
| `<C-S>` | `i/c` | 切换 Flash 搜索 | `config/plugins/utils/flash.nix` |

## 2. 窗口与标签页

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<C-Up>` | `n` | 增加窗口高度 | `config/core/keymap.nix` |
| `<C-Down>` | `n` | 减少窗口高度 | `config/core/keymap.nix` |
| `<C-Left>` | `n` | 调整窗口宽度 | `config/core/keymap.nix` |
| `<C-Right>` | `n` | 调整窗口宽度 | `config/core/keymap.nix` |
| `<leader>wH` | `n` | 窗口移到左侧 | `config/core/keymap.nix` |
| `<leader>wJ` | `n` | 窗口移到底部 | `config/core/keymap.nix` |
| `<leader>wK` | `n` | 窗口移到顶部 | `config/core/keymap.nix` |
| `<leader>wL` | `n` | 窗口移到右侧 | `config/core/keymap.nix` |
| `<leader><tab><tab>` | `n` | 新建标签页 | `config/core/keymap.nix` |
| `<leader><tab>d` | `n` | 关闭当前标签页 | `config/core/keymap.nix` |
| `<leader><tab>o` | `n` | 关闭其他标签页 | `config/core/keymap.nix` |
| `<leader><tab>l` | `n` | 下一个标签页 | `config/core/keymap.nix` |
| `<leader><tab>h` | `n` | 上一个标签页 | `config/core/keymap.nix` |

## 3. 文件、搜索与帮助

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `-` | `n` | 打开 `mini-files` | `config/plugins/editor/mini-files.nix` |
| `<leader>e` | `n` | 切换 Neo-tree | `config/plugins/editor/neo-tree.nix` |
| `<leader>fp` | `n` | Telescope 项目切换 | `config/plugins/utils/telescope.nix` |
| `<leader>ff` | `n` | 查找文件 | `config/plugins/utils/telescope.nix` |
| `<leader>fs` | `n` | 当前字符快搜 | `config/plugins/utils/telescope.nix` |
| `<leader>fg` | `n` | 全局搜索 | `config/plugins/utils/telescope.nix` |
| `<leader>fb` | `n` | 查看缓冲区列表 | `config/plugins/utils/telescope.nix` |
| `<leader>fo` | `n` | 最近文件 | `config/plugins/utils/telescope.nix` |
| `<leader>fr` | `n` | 高级搜索 `live_grep_args` | `config/plugins/utils/telescope.nix` |
| `<leader>ft` | `n` | 查询 TODO 注释 | `config/plugins/editor/todo-comments.nix` |
| `<leader>fy` | `n` | 打开 Yazi 文件管理器 | `config/plugins/utils/yazi.nix` |
| `<leader>H` | `n` | Telescope 帮助查询 | `config/plugins/utils/telescope.nix` |

备注：

- `<leader>fk` 在 `telescope.nix` 中已注释，当前未启用。

## 4. LSP、符号与诊断

### 4.1 LSP 跳转与操作

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `gd` | `n` | 跳转定义 | `config/plugins/lsp/lsp.nix` |
| `gr` | `n` | 查找引用 | `config/plugins/lsp/lsp.nix` |
| `gD` | `n` | 跳转声明 | `config/plugins/lsp/lsp.nix` |
| `gi` | `n` | 查找实现 | `config/plugins/lsp/lsp.nix` |
| `gt` | `n` | 跳转类型定义 | `config/plugins/lsp/lsp.nix` |
| `<leader>cR` | `n` | 重命名符号 | `config/plugins/lsp/lsp.nix` |
| `<leader>ca` | `n` | 代码操作 | `config/plugins/lsp/lsp.nix` |
| `K` | `n` | 查看折叠内容；若当前无折叠则显示 LSP Hover | `config/plugins/editor/ufo.nix` |
| `<leader>ci` | `n` | Telescope 查找实现 | `config/plugins/lsp/lsp.nix` |
| `<leader>cr` | `n` | Telescope 查找引用 | `config/plugins/lsp/lsp.nix` |
| `<leader>cw` | `n` | Telescope 查找工作区符号 | `config/plugins/lsp/lsp.nix` |
| `<leader>cf` | `n` | Telescope 文件大纲 | `config/plugins/lsp/lsp.nix` |
| `<leader>c[` | `n` | Telescope 被调列表 | `config/plugins/lsp/lsp.nix` |
| `<leader>c]` | `n` | Telescope 调用列表 | `config/plugins/lsp/lsp.nix` |
| `<leader>ce` | `n` | Telescope 当前文件诊断 | `config/plugins/lsp/lsp.nix` |
| `<leader>cW` | `n` | Telescope 全局诊断 | `config/plugins/lsp/lsp.nix` |
| `<leader>cs` | `n` | 切换 Aerial 符号面板 | `config/plugins/editor/aerial.nix` |
| `<leader>cl` | `n` | Trouble LSP 定义/引用面板 | `config/plugins/utils/trouble.nix` |

### 4.2 诊断与问题列表

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>cd` | `n` | 打开当前行诊断浮窗 | `config/plugins/lsp/lsp.nix` |
| `<leader>D` | `n` | 显示诊断信息浮窗 | `config/plugins/lsp/lsp.nix` |
| `[d` | `n` | 上一个诊断 | `config/plugins/lsp/lsp.nix` |
| `]d` | `n` | 下一个诊断 | `config/plugins/lsp/lsp.nix` |
| `<leader>xx` | `n` | 切换诊断面板 | `config/plugins/utils/trouble.nix` |
| `<leader>xX` | `n` | 切换当前缓冲区诊断面板 | `config/plugins/utils/trouble.nix` |
| `<leader>xL` | `n` | 切换位置列表面板 | `config/plugins/utils/trouble.nix` |
| `<leader>xQ` | `n` | 切换 Quickfix 面板 | `config/plugins/utils/trouble.nix` |
| `[q` | `n` | 上一个问题/Quickfix 项 | `config/plugins/utils/trouble.nix` |
| `]q` | `n` | 下一个问题/Quickfix 项 | `config/plugins/utils/trouble.nix` |

## 5. Git

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>gg` | `n` | 打开 LazyGit | `config/plugins/git/lazygit.nix` |
| `]c` | `n` | 下一个 Git hunk | `config/plugins/git/gitsigns.nix` |
| `[c` | `n` | 上一个 Git hunk | `config/plugins/git/gitsigns.nix` |
| `<leader>hp` | `n` | 预览 hunk | `config/plugins/git/gitsigns.nix` |
| `<leader>hi` | `n` | 行内预览 hunk | `config/plugins/git/gitsigns.nix` |
| `<leader>hb` | `n` | 查看当前行 blame | `config/plugins/git/gitsigns.nix` |
| `<leader>hd` | `n` | 查看索引差异 | `config/plugins/git/gitsigns.nix` |
| `<leader>hD` | `n` | 查看 `HEAD` 差异 | `config/plugins/git/gitsigns.nix` |
| `<leader>hQ` | `n` | 所有 Git 变更送入 Quickfix | `config/plugins/git/gitsigns.nix` |
| `<leader>hq` | `n` | 当前文件 Git 变更送入 Quickfix | `config/plugins/git/gitsigns.nix` |
| `<leader>ht` | `n` | 切换当前行 blame 显示 | `config/plugins/git/gitsigns.nix` |
| `<leader>hw` | `n` | 切换单词级差异显示 | `config/plugins/git/gitsigns.nix` |
| `ih` | `o/x` | 选择当前 Git hunk | `config/plugins/git/gitsigns.nix` |

## 6. 调试 DAP

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>dB` | `n` | 条件断点 | `config/plugins/dap/dap.nix` 懒加载键 |
| `<leader>db` | `n` | 切换断点 | `config/plugins/dap/dap.nix` 懒加载键 |
| `<leader>dc` | `n` | 启动/继续调试 | `config/plugins/dap/dap.nix` 懒加载键 |
| `<leader>dd` | `n` | 清空全部断点 | `config/plugins/dap/dap.nix` |
| `<F5>` | `n` | 启动/继续调试 | `config/plugins/dap/dap.nix` |
| `<leader>dx` | `n` | 终止调试 | `config/plugins/dap/dap.nix` |
| `<leader>dn` | `n` | 单步跳过 | `config/plugins/dap/dap.nix` |
| `<F10>` | `n` | 单步跳过 | `config/plugins/dap/dap.nix` |
| `<leader>di` | `n` | 单步进入 | `config/plugins/dap/dap.nix` |
| `<F11>` | `n` | 单步进入 | `config/plugins/dap/dap.nix` |
| `<leader>do` | `n` | 单步跳出 | `config/plugins/dap/dap.nix` |
| `<F12>` | `n` | 单步跳出 | `config/plugins/dap/dap.nix` |
| `<leader>d[` | `n` | 上一层调用栈 | `config/plugins/dap/dap.nix` |
| `<leader>d]` | `n` | 下一层调用栈 | `config/plugins/dap/dap.nix` |
| `<leader>dl` | `n` | 重新运行上一次调试 | `config/plugins/dap/dap.nix` |
| `<leader>dC` | `n` | 运行到光标处 | `config/plugins/dap/dap.nix` |
| `<leader>dr` | `n` | 切换调试 REPL | `config/plugins/dap/dap.nix` |
| `<leader>dw` | `n` | 悬浮查看变量值 | `config/plugins/dap/dap.nix` |

备注：

- `dap-ui.nix`、`dap-lldb.nix`、`dap-virtual-text` 中重复声明了部分懒加载键，实际用户侧仍是上表这组按键。

## 7. 缓冲区、折叠与终端

### 7.1 缓冲区

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `]b` | `n` | 下一个缓冲区 | `config/plugins/ui/bufferline.nix` |
| `[b` | `n` | 上一个缓冲区 | `config/plugins/ui/bufferline.nix` |
| `<leader>bb` | `n` | 快速切回上一个缓冲区 | `config/plugins/ui/bufferline.nix` |
| `<leader>bf` | `n` | 选择并跳转缓冲区 | `config/plugins/ui/bufferline.nix` |
| `<leader>bd` | `n` | 删除当前缓冲区 | `config/plugins/ui/bufferline.nix` |
| `<leader>bo` | `n` | 删除其他缓冲区 | `config/plugins/ui/bufferline.nix` |
| `<leader>bp` | `n` | 切换固定状态 | `config/plugins/ui/bufferline.nix` |
| `<leader>bP` | `n` | 删除未固定缓冲区 | `config/plugins/ui/bufferline.nix` |

### 7.2 折叠

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `zR` | `n` | 打开全部折叠 | `config/plugins/editor/ufo.nix` |
| `zM` | `n` | 折叠全部代码 | `config/plugins/editor/ufo.nix` |

### 7.3 终端

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>tt` | `n` | 打开默认终端 | `config/plugins/utils/toggleterm.nix` |
| `<leader>tv` | `n` | 打开垂直终端 | `config/plugins/utils/toggleterm.nix` |
| `<leader>th` | `n` | 打开水平终端 | `config/plugins/utils/toggleterm.nix` |
| `<leader>tf` | `n` | 打开浮动终端 | `config/plugins/utils/toggleterm.nix` |
| `<Esc>` | `t` | 终端模式退回 Normal | `config/plugins/utils/toggleterm.nix` |
| `<C-\\>` | `n/t` | ToggleTerm `open_mapping` | `config/plugins/utils/toggleterm.nix` |

## 8. 标记、主题与预览

### 8.1 Harpoon 标记

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>ma` | `n` | 添加标记 | `config/plugins/utils/harpoon.nix` |
| `<leader>md` | `n` | 删除标记 | `config/plugins/utils/harpoon.nix` |
| `<leader>mm` | `n` | 切换 Harpoon 菜单 | `config/plugins/utils/harpoon.nix` |
| `<leader>m1` | `n` | 跳到标记 1 | `config/plugins/utils/harpoon.nix` |
| `<leader>m2` | `n` | 跳到标记 2 | `config/plugins/utils/harpoon.nix` |
| `<leader>m3` | `n` | 跳到标记 3 | `config/plugins/utils/harpoon.nix` |
| `<leader>m[` | `n` | 上一个标记 | `config/plugins/utils/harpoon.nix` |
| `<leader>m]` | `n` | 下一个标记 | `config/plugins/utils/harpoon.nix` |

### 8.2 主题与 Markdown

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>T` | `n` | 主题切换 | `config/plugins/colorschemes/default.nix` |
| `<leader>p` | `n` | Markdown 预览开关 | `config/plugins/utils/markdown-preview.nix` |

## 9. Obsess 专注面板

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<leader>os` | `n` | 切换 Obsess 窗口 | `config/plugins/github/obsess.nix` |
| `<leader>oc` | `n` | 关闭/注销面板 | `config/plugins/github/obsess.nix` |
| `<leader>oo` | `n` | 设置分钟计时器 | `config/plugins/github/obsess.nix` |
| `<leader>ol` | `n` | 设置秒级计时器 | `config/plugins/github/obsess.nix` |
| `<leader>oa` | `n` | 添加任务 | `config/plugins/github/obsess.nix` |
| `<leader>ot` | `n` | 切换任务完成状态 | `config/plugins/github/obsess.nix` |
| `<leader>od` | `n` | 删除任务 | `config/plugins/github/obsess.nix` |
| `<leader>oe` | `n` | 清空任务列表 | `config/plugins/github/obsess.nix` |

## 10. Dashboard 启动页

仅在无文件参数启动 Neovim 时生效。

| 快捷键 | 场景 | 作用 | 来源 |
| --- | --- | --- | --- |
| `n` | Dashboard | 新建文件并进入插入模式 | `config/plugins/ui/dashboard.nix` |
| `f` | Dashboard | 查找文件 | `config/plugins/ui/dashboard.nix` |
| `p` | Dashboard | 项目切换 | `config/plugins/ui/dashboard.nix` |
| `s` | Dashboard | 恢复会话 | `config/plugins/ui/dashboard.nix` |
| `q` | Dashboard | 退出 Neovim | `config/plugins/ui/dashboard.nix` |

## 11. 特定界面内的局部按键

### 11.1 Telescope 面板内

在 Telescope 的插入模式和普通模式中，以下键位被显式改写：

| 快捷键 | 场景 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<A-s>` | Telescope `i/n` | 水平分屏打开选中项 | `config/plugins/utils/telescope.nix` |
| `<A-v>` | Telescope `i/n` | 垂直分屏打开选中项 | `config/plugins/utils/telescope.nix` |
| `<A-t>` | Telescope `i/n` | 新标签页打开选中项 | `config/plugins/utils/telescope.nix` |

### 11.2 UFO 折叠预览窗口

| 快捷键 | 场景 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<C-u>` | UFO 预览窗 | 向上滚动 | `config/plugins/editor/ufo.nix` |
| `<C-d>` | UFO 预览窗 | 向下滚动 | `config/plugins/editor/ufo.nix` |
| `[` | UFO 预览窗 | 跳到顶部 | `config/plugins/editor/ufo.nix` |
| `]` | UFO 预览窗 | 跳到底部 | `config/plugins/editor/ufo.nix` |

### 11.3 Neo-tree 面板内

| 快捷键 | 场景 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<Space>` | Neo-tree | 被显式禁用，不执行任何动作 | `config/plugins/editor/neo-tree.nix` |

## 12. Neovide 专用

仅在 `vim.g.neovide` 为真时生效。

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<D-s>` | `n` | 保存 | `config/neovide/keymap.nix` |
| `<D-c>` | `v` | 复制到系统剪贴板 | `config/neovide/keymap.nix` |
| `<D-v>` | `n` | 粘贴 | `config/neovide/keymap.nix` |
| `<D-v>` | `v` | 粘贴 | `config/neovide/keymap.nix` |
| `<D-v>` | `c` | 命令行粘贴 | `config/neovide/keymap.nix` |
| `<D-v>` | `i` | 插入模式粘贴 | `config/neovide/keymap.nix` |
| `<C-=>` | `n` | UI 放大 | `config/neovide/keymap.nix` |
| `<C-->` | `n` | UI 缩小 | `config/neovide/keymap.nix` |

## 13. Which-key 分组前缀

`which-key` 为以下前缀注册了分组名称，便于记忆和弹窗提示：

| 前缀 | 分组名 | 来源 |
| --- | --- | --- |
| `<leader>f` | 文件查找 | `config/plugins/utils/which-key.nix` |
| `<leader>c` | LSP 操作 | `config/plugins/utils/which-key.nix` |
| `<leader>a` | AI | `config/plugins/utils/which-key.nix` |
| `<leader>d` | 调试 | `config/plugins/utils/which-key.nix` |
| `<leader>g` | Git | `config/plugins/utils/which-key.nix` |
| `<leader>t` | 终端操作 | `config/plugins/utils/which-key.nix` |
| `<leader>m` | 文件标记跳转 | `config/plugins/utils/which-key.nix` |
| `<leader>T` | 主题切换 | `config/plugins/utils/which-key.nix` |
| `<leader>b` | 缓冲区操作 | `config/plugins/utils/which-key.nix` |
| `<leader>w` | 窗口移动 | `config/plugins/utils/which-key.nix` |
| `<leader>h` | Git Hunk/代码块修改 | `config/plugins/utils/which-key.nix` |
| `<leader><tab>` | Tab 管理 | `config/plugins/utils/which-key.nix` |
| `<leader>e` | Neo-tree | `config/plugins/utils/which-key.nix` |
| `<leader>H` | 帮助查询 | `config/plugins/utils/which-key.nix` |
| `<leader>D` | 诊断浮窗 | `config/plugins/utils/which-key.nix` |
| `<leader>x` | 问题查看 | `config/plugins/utils/which-key.nix` |
| `<leader>q` | 退出编辑器 | `config/plugins/utils/which-key.nix` |
| `<leader>p` | Markdown 内容预览 | `config/plugins/utils/which-key.nix` |
| `<leader>o` | 专注面板 | `config/plugins/utils/which-key.nix` |

## 15. 插件内置默认快捷键

本节统计“插件自身默认提供的键位”，即使本仓库没有逐个手写，也一并列出。

### 15.1 blink.cmp 预设键位

当前项目使用：

- 补全菜单：`preset = "super-tab"`
- 命令行补全：`preset = "super-tab"`

#### 补全菜单通用键

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `<C-space>` | 打开补全菜单；若文档已开则切换文档显示 | `blink.cmp` 安装文档 |
| `<C-n>` / `<Down>` | 选中下一项 | `blink.cmp` 预设 |
| `<C-p>` / `<Up>` | 选中上一项 | `blink.cmp` 预设 |
| `<C-e>` | 取消/隐藏补全菜单 | `blink.cmp` 预设 |
| `<C-k>` | 切换签名帮助 | `blink.cmp` 预设 |

#### `super-tab` 预设补充键

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `<Tab>` | 向前跳片段；必要时接受当前补全项 | `blink.cmp` `super-tab` 预设 |
| `<S-Tab>` | 向后跳片段 | `blink.cmp` `super-tab` 预设 |
| `<C-f>` | 向下滚动文档 | `blink.cmp` `super-tab` 预设 |
| `<C-b>` | 向上滚动文档 | `blink.cmp` `super-tab` 预设 |

#### 命令行补全默认键

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `<Tab>` | 显示补全或选择下一项 | `blink.cmp` cmdline 预设 |
| `<S-Tab>` | 选择上一项 | `blink.cmp` cmdline 预设 |
| `<C-y>` | 接受当前项 | `blink.cmp` cmdline 预设 |
| `<Left>` | 上一项 | `blink.cmp` cmdline 预设 |
| `<Right>` | 下一项 | `blink.cmp` cmdline 预设 |
| `<End>` | 隐藏补全菜单 | `blink.cmp` cmdline 预设 |

### 15.2 nvim-surround 默认键位

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `<C-g>s` | `i` | 插入 surround | `nvim-surround` 默认配置 |
| `<C-g>S` | `i` | 插入 surround（换行形式） | `nvim-surround` 默认配置 |
| `ys` | `n` | 给目标添加 surround | `nvim-surround` 默认配置 |
| `yss` | `n` | 给当前行添加 surround | `nvim-surround` 默认配置 |
| `yS` | `n` | 添加换行 surround | `nvim-surround` 默认配置 |
| `ySS` | `n` | 给当前行添加换行 surround | `nvim-surround` 默认配置 |
| `S` | `v` | 给选区添加 surround | `nvim-surround` 默认配置 |
| `gS` | `v` | 给选区添加换行 surround | `nvim-surround` 默认配置 |
| `ds` | `n` | 删除 surround | `nvim-surround` 默认配置 |
| `cs` | `n` | 替换 surround | `nvim-surround` 默认配置 |
| `cS` | `n` | 替换为换行 surround | `nvim-surround` 默认配置 |

### 15.3 mini.files 默认面板键位

| 快捷键 | 场景 | 作用 | 来源 |
| --- | --- | --- | --- |
| `q` | mini.files | 关闭文件浏览器 | `mini.files` 默认映射 |
| `l` | mini.files | 进入目录 / 打开文件 | `mini.files` 默认映射 |
| `L` | mini.files | 进入目录并关闭浏览器 | `mini.files` 默认映射 |
| `h` | mini.files | 返回上一级 | `mini.files` 默认映射 |
| `H` | mini.files | 返回上一级并关闭当前目录层 | `mini.files` 默认映射 |
| `'` | mini.files | 跳到已标记位置 | `mini.files` 默认映射 |
| `m` | mini.files | 设置标记 | `mini.files` 默认映射 |
| `<BS>` | mini.files | 重置到初始路径 | `mini.files` 默认映射 |
| `@` | mini.files | 显示当前工作目录 | `mini.files` 默认映射 |
| `g?` | mini.files | 显示帮助 | `mini.files` 默认映射 |
| `=` | mini.files | 同步文件系统改动 | `mini.files` 默认映射 |
| `<` | mini.files | 向左裁剪窗口列 | `mini.files` 默认映射 |
| `>` | mini.files | 向右裁剪窗口列 | `mini.files` 默认映射 |

### 15.4 Flash 默认键位

| 快捷键 | 模式 | 作用 | 来源 |
| --- | --- | --- | --- |
| `s` | `n/x/o` | Flash 跳转 | `flash.nvim` 默认键位 |
| `S` | `n/x/o` | Treesitter 跳转 | `flash.nvim` 默认键位 |
| `r` | `o` | 远程跳转 | `flash.nvim` 默认键位 |
| `R` | `o/x` | Treesitter 搜索 | `flash.nvim` 默认键位 |
| `<C-s>` | `c` | 切换 Flash 搜索 | `flash.nvim` 默认键位 |

备注：

- 当前项目额外把 `<C-s>` 扩展到了插入模式，并新增了 `gl` 行跳转。

### 15.5 Telescope 面板默认键位

以下键位只在 Telescope picker 内生效。

#### 插入模式

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `<C-n>` / `<Down>` | 下一项 | Telescope 默认映射 |
| `<C-p>` / `<Up>` | 上一项 | Telescope 默认映射 |
| `<CR>` | 打开选中项 | Telescope 默认映射 |
| `<C-x>` | 水平分屏打开 | Telescope 默认映射 |
| `<C-v>` | 垂直分屏打开 | Telescope 默认映射 |
| `<C-t>` | 新标签页打开 | Telescope 默认映射 |
| `<Tab>` | 切换当前项选择状态 | Telescope 默认映射 |
| `<S-Tab>` | 切换当前项选择状态（反向） | Telescope 默认映射 |
| `<C-q>` | 发送到 Quickfix | Telescope 默认映射 |
| `<M-q>` | 发送所有已选项到 Quickfix | Telescope 默认映射 |
| `<C-u>` / `<C-d>` | 预览窗上下滚动 | Telescope 默认映射 |
| `<PageUp>` / `<PageDown>` | 结果列表滚动 | Telescope 默认映射 |
| `<C-c>` / `<Esc>` | 关闭 picker | Telescope 默认映射 |
| `<C-/>` / `<C-_>` | 显示 which-key 风格帮助 | Telescope 默认映射 |

#### 普通模式

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `j` / `k` | 上下移动 | Telescope 默认映射 |
| `H` / `M` / `L` | 跳到顶部 / 中部 / 底部 | Telescope 默认映射 |
| `<CR>` | 打开选中项 | Telescope 默认映射 |
| `<C-x>` / `<C-v>` / `<C-t>` | 分屏/标签页打开 | Telescope 默认映射 |
| `<Tab>` / `<S-Tab>` | 选择/反选条目 | Telescope 默认映射 |
| `gg` | 跳到顶部 | Telescope 默认映射 |
| `?` | 显示帮助 | Telescope 默认映射 |
| `<Esc>` / `<C-c>` | 关闭 picker | Telescope 默认映射 |

备注：

- 当前项目额外覆盖了 `<A-s>`、`<A-v>`、`<A-t>` 三个面板内快捷键。

### 15.6 Neo-tree 文件系统默认键位

以下为 Neo-tree 文件系统 source 的默认映射；当前项目把其中的 `<Space>` 手动禁用了。

| 快捷键 | 场景 | 作用 | 来源 |
| --- | --- | --- | --- |
| `?` | Neo-tree | 打开帮助 | `neo-tree` 默认映射 |
| `<` / `>` | Neo-tree | 切换上一个/下一个 source | `neo-tree` 默认映射 |
| `<BS>` | Neo-tree | 返回上一级目录 | `neo-tree` 默认映射 |
| `.` | Neo-tree | 将当前节点设为根目录 | `neo-tree` 默认映射 |
| `/` | Neo-tree | 模糊搜索 | `neo-tree` 默认映射 |
| `D` | Neo-tree | 目录内模糊搜索 | `neo-tree` 默认映射 |
| `#` | Neo-tree | 模糊排序 | `neo-tree` 默认映射 |
| `f` | Neo-tree | 提交过滤条件 | `neo-tree` 默认映射 |
| `<C-x>` | Neo-tree | 清空过滤 | `neo-tree` 默认映射 |
| `H` | Neo-tree | 切换隐藏文件显示 | `neo-tree` 默认映射 |
| `[g` / `]g` | Neo-tree | 上一个/下一个 Git 修改项 | `neo-tree` 默认映射 |
| `<Space>` | Neo-tree | 展开/折叠节点 | `neo-tree` 默认映射，当前项目禁用 |
| `<CR>` / `<2-LeftMouse>` | Neo-tree | 打开节点 | `neo-tree` 默认映射 |
| `P` | Neo-tree | 预览模式开关 | `neo-tree` 默认映射 |
| `l` | Neo-tree | 聚焦预览窗口 | `neo-tree` 默认映射 |
| `<C-b>` / `<C-f>` | Neo-tree | 预览窗口滚动 | `neo-tree` 默认映射 |
| `<Esc>` | Neo-tree | 取消/退出预览状态 | `neo-tree` 默认映射 |
| `A` | Neo-tree | 新建目录 | `neo-tree` 默认映射 |
| `a` | Neo-tree | 新建文件 | `neo-tree` 默认映射 |
| `b` | Neo-tree | 仅重命名 basename | `neo-tree` 默认映射 |
| `c` | Neo-tree | 复制 | `neo-tree` 默认映射 |
| `d` | Neo-tree | 删除 | `neo-tree` 默认映射 |
| `i` | Neo-tree | 显示文件详情 | `neo-tree` 默认映射 |
| `m` | Neo-tree | 移动 | `neo-tree` 默认映射 |
| `p` | Neo-tree | 粘贴剪贴板内容 | `neo-tree` 默认映射 |
| `q` | Neo-tree | 关闭窗口 | `neo-tree` 默认映射 |
| `r` | Neo-tree | 重命名 | `neo-tree` 默认映射 |
| `R` | Neo-tree | 刷新 | `neo-tree` 默认映射 |
| `s` | Neo-tree | 水平分屏打开 | `neo-tree` 默认映射 |
| `t` | Neo-tree | 新标签页打开 | `neo-tree` 默认映射 |
| `w` | Neo-tree | 选择窗口打开 | `neo-tree` 默认映射 |
| `x` | Neo-tree | 剪切到剪贴板 | `neo-tree` 默认映射 |
| `y` | Neo-tree | 复制到剪贴板 | `neo-tree` 默认映射 |
| `z` | Neo-tree | 折叠全部节点 | `neo-tree` 默认映射 |
| `C` | Neo-tree | 关闭当前节点/父节点 | `neo-tree` 默认映射 |

### 15.7 Trouble 面板默认键位

以下键位只在 Trouble 面板内生效。

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `?` | 显示帮助 | Trouble 默认映射 |
| `r` | 刷新 | Trouble 默认映射 |
| `R` | 切换自动刷新 | Trouble 默认映射 |
| `q` | 关闭 | Trouble 默认映射 |
| `o` | 跳转并关闭 | Trouble 默认映射 |
| `<Esc>` | 取消 | Trouble 默认映射 |
| `<CR>` / `<2-LeftMouse>` | 跳转 | Trouble 默认映射 |
| `<C-s>` | 水平分屏跳转 | Trouble 默认映射 |
| `<C-v>` | 垂直分屏跳转 | Trouble 默认映射 |
| `{` / `[[` | 上一个问题 | Trouble 默认映射 |
| `}` / `]]` | 下一个问题 | Trouble 默认映射 |
| `dd` | 删除条目 | Trouble 默认映射 |
| `d` | 删除选中条目（可视模式） | Trouble 默认映射 |
| `i` | 检查条目详情 | Trouble 默认映射 |
| `p` | 预览 | Trouble 默认映射 |
| `P` | 预览开关 | Trouble 默认映射 |
| `zo` / `zO` | 打开折叠 / 递归打开折叠 | Trouble 默认映射 |
| `zc` / `zC` | 关闭折叠 / 递归关闭折叠 | Trouble 默认映射 |
| `za` / `zA` | 切换折叠 / 递归切换折叠 | Trouble 默认映射 |
| `zm` / `zM` | 更多折叠 / 全部折叠 | Trouble 默认映射 |
| `zr` / `zR` | 减少折叠 / 全部展开 | Trouble 默认映射 |
| `zx` / `zX` | 更新折叠 / 更新全部折叠 | Trouble 默认映射 |
| `zn` / `zN` / `zi` | 禁用折叠 / 启用折叠 / 切换折叠能力 | Trouble 默认映射 |

### 15.8 Aerial 符号面板默认键位

以下键位只在 Aerial 符号窗口内生效。

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `?` / `g?` | 显示帮助 | Aerial 默认映射 |
| `<CR>` / `<2-LeftMouse>` | 跳转到符号 | Aerial 默认映射 |
| `<C-v>` | 垂直分屏跳转 | Aerial 默认映射 |
| `<C-s>` | 水平分屏跳转 | Aerial 默认映射 |
| `p` | 预览/滚动关联内容 | Aerial 默认映射 |
| `<C-j>` / `<C-k>` | 下移/上移并同步滚动 | Aerial 默认映射 |
| `{` / `}` | 上一个/下一个符号 | Aerial 默认映射 |
| `[[` / `]]` | 上一级/下一级层级符号 | Aerial 默认映射 |
| `q` | 关闭面板 | Aerial 默认映射 |
| `o` / `za` | 切换树节点 | Aerial 默认映射 |
| `O` / `zA` | 递归切换树节点 | Aerial 默认映射 |
| `l` / `zo` | 打开树节点 | Aerial 默认映射 |
| `L` / `zO` | 递归打开树节点 | Aerial 默认映射 |
| `h` / `zc` | 关闭树节点 | Aerial 默认映射 |
| `H` / `zC` | 递归关闭树节点 | Aerial 默认映射 |
| `zr` / `zR` | 增加折叠层级 / 全展开 | Aerial 默认映射 |
| `zm` / `zM` | 减少折叠层级 / 全折叠 | Aerial 默认映射 |
| `zx` / `zX` | 同步折叠 | Aerial 默认映射 |

### 15.9 yazi.nvim 浮窗默认键位

这些键位作用于 yazi.nvim 打开的浮动窗口交互层，不是 Yazi TUI 本体内部的全部按键。

| 快捷键 | 作用 | 来源 |
| --- | --- | --- |
| `<F1>` | 显示帮助 | `yazi.nvim` 默认配置 |
| `<C-\\>` | 修改 Neovim 当前工作目录 | `yazi.nvim` 默认配置 |
| `<C-y>` | 复制相对路径到寄存器 | `yazi.nvim` 默认配置 |
| `<Tab>` | 切换已打开缓冲区 | `yazi.nvim` 默认配置 |
| `<C-s>` | 在目录内搜索 | `yazi.nvim` 默认配置 |
| `<C-o>` | 水平分屏打开文件 | `yazi.nvim` 默认配置 |
| `<C-t>` | 新标签页打开文件 | `yazi.nvim` 默认配置 |
| `<C-v>` | 垂直分屏打开文件 | `yazi.nvim` 默认配置 |
| `<C-g>` | 替换目录中文件 | `yazi.nvim` 默认配置 |
| `<C-q>` | 发送到 Quickfix | `yazi.nvim` 默认配置 |

### 15.10 不提供固定默认键位，或本项目已完全接管的插件

以下插件在当前配置里没有“插件自带且稳定可直接列举”的默认快捷键，或文档只给出示例映射：

- `gitsigns.nvim`：官方更推荐在 `on_attach` 里自行定义
- `harpoon2`：当前项目完全手写了自己的 `<leader>m...` 映射
- `bufferline.nvim`：文档主要给示例映射，不强制内置默认键
- `todo-comments.nvim`：更多依赖命令和 Telescope/ Trouble 集成
- `markdown-preview.nvim`：主要通过命令触发
- `lazygit.nvim`：主要通过命令触发
- `toggleterm.nvim`：存在 `open_mapping`，但当前项目已改成 `<C-\>`

如果你后面希望，我可以继续把这份文档再加工成：

1. 更适合 README 展示的精简版
2. 按 `which-key` 前缀分组的速查表
3. 可自动生成的脚本版文档，后续改键时一键更新
