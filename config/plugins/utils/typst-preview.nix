{
  plugins.typst-preview.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>pt";
      action = "<cmd>MarkdownPreviewToggle<cr>";
      options = {
        silent = true;
        desc = "Markdown内容预览";
      };
    }
  ];
}
