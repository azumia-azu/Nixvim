{pkgs, ...}: {
  extraPackages = [
    pkgs.eslint_d
    pkgs.eslint
  ];
  plugins.lint.enable = true;
  plugins.lint.lintersByFt = {
    javascript = ["eslint_d"];
    typescript = ["eslint_d"];
    javascriptreact = ["eslint_d"];
    typescriptreact = ["eslint_d"];
  };
  extraConfigLua = ''
    vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave"}, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  '';
}
