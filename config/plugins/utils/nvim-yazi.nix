{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    nvim-yazi
  ];

  extraConfigLua = ''
    require("lz.n").load {
      {
        "nvim-yazi",
        cmd = { "Yazi" },
      },
    }
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>fy";
      action = "<cmd>Yazi<cr>";
      options = {
        silent = true;
        desc = "Yazi文件管理器";
      };
    }
  ];
}
