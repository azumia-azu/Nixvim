{
  imports = [
    ./flash.nix
    ./telescope.nix
    ./toggleterm.nix
    ./which-key.nix
    ./project.nix
    ./harpoon.nix
    ./trouble.nix
    ./persistence.nix
    ./surround.nix
    # NOTE: 什么!!!居然有两个markdown的插件!!!
    # NOTE: 不愧是我，贴心，且保持优雅!!!
    ./markdown-preview.nix # 一个能打开浏览器渲染看的
    ./render-markdown.nix # 一个ssh链接后，只能在终端显示的
  ];
}
