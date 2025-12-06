{pkgs, ...}: {
  #######主题选择功能########
  #使用lua文件导入的主题修改功能
  extraPlugins = with pkgs.vimPlugins; [
    catppuccin-nvim
    github-nvim-theme
    gruvbox-nvim
    kanagawa-nvim
    nightfox-nvim
    nord-nvim
    rose-pine
    tokyonight-nvim
    vague-nvim
  ];
  extraFiles."lua/features/theme-list.lua".source = ./theme-list.lua;
  extraFiles."lua/features/switch-theme.lua".source = ./switch-theme.lua;

  autoCmd = [
    {
      desc = "加载颜色主题切换功能";
      event = "VimEnter";
      callback = {
        __raw = ''
          function()
            require("features.switch-theme").setup()
          end'';
      };
    }
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>T";
      action = "<cmd>ThemeSwitch theme=dropdown<cr>";
      options = {
        silent = true;
        desc = "主题切换";
      };
    }
  ];
}
