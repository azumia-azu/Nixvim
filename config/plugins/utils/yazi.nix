{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    yazi-nvim
  ];

  extraConfigLua = ''
    require("lz.n").load {
      {
        "yazi-nvim",
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
