{
  lib,
  pkgs,
  config,
  ...
}: let
  cfg = config.plugins.leetcode-nvim;

  # 由 nix 管理的 rust 初始化脚本
  rustInitScript = pkgs.writeShellScript "leetcode-rust-init.sh" ''
    #!/bin/sh
    set -eu

    crates=""
    next=""

    for f in *.rs; do
      crates="$crates$next{\"root_module\":\"$f\",\"edition\":\"2021\",\"deps\":[]}"
      next=","
    done

    sysroot_src="$(${pkgs.rustc}/bin/rustc --print sysroot)/lib/rustlib/src/rust/library"

    echo "{\"sysroot_src\":\"$sysroot_src\",\"crates\":[$crates]}" \
      | ${pkgs.jq}/bin/jq '.' > rust-project.json
  '';
in {
  ###### options ######

  options.plugins.leetcode-nvim = {
    enable = lib.mkEnableOption "leetcode-nvim";

    rust = {
      enable = lib.mkEnableOption "Rust integration for leetcode-nvim";

      autoInit = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = ''
          Automatically generate rust-project.json and restart rust-analyzer
          when entering a Rust LeetCode question.
        '';
      };
    };
  };

  ###### config ######

  config = lib.mkIf cfg.enable {
    # 确保插件被加载（保持你原来的语义）
    extraPlugins = [
      pkgs.vimPlugins.leetcode-nvim
    ];

    # Rust hook
    extraConfigLua = lib.mkIf (cfg.rust.enable && cfg.rust.autoInit) ''
      local rust_init = "${rustInitScript}"

      require("leetcode").setup({
        hooks = {
          ["question_enter"] = {
            function()
              -- 只对 Rust 生效
              if vim.fn.expand("%:e") ~= "rs" then
                return
              end

              local ok, _, code = os.execute(rust_init)

              if ok and code == 0 then
                vim.notify(
                  "leetcode: rust-project.json updated",
                  vim.log.levels.INFO
                )
                vim.cmd("LspRestart rust_analyzer")
              else
                vim.notify(
                  "leetcode: failed to update rust-project.json",
                  vim.log.levels.ERROR
                )
              end
            end,
          },
        },
      })
    '';
  };
}
