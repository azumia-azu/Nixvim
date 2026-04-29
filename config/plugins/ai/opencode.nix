{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    opencode-nvim
  ];

  extraPackages = [
    pkgs.opencode
    pkgs.curl
  ];

  extraConfigLua = ''
    vim.g.opencode_opts = {}

    vim.o.autoread = true

    vim.keymap.set({ "n", "x" }, "<leader>aa", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "Ask opencode" })

    vim.keymap.set({ "n", "x" }, "<leader>ao", function()
      require("opencode").select()
    end, { desc = "Opencode actions" })

    vim.keymap.set({ "n", "t" }, "<leader>at", function()
      require("opencode").toggle()
    end, { desc = "Toggle opencode" })
  '';
}
