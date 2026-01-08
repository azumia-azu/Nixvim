{
  lib,
  pkgs,
  config,
  ...
}: let
  cfg = config.plugins.leetcode-nvim;

  # Rust 初始化脚本，由 nix 管理
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
      enable = lib.mkEnableOption "Enable Rust integration for leetcode-nvim";

      autoInit = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = "Automatically generate rust-project.json and restart rust-analyzer on Rust questions";
      };
    };
  };

  ###### config ######

  config = lib.mkIf cfg.enable {
    # 保留原来的插件模块，确保插件加载
    extraPlugins = [
      pkgs.vimPlugins.leetcode-nvim
    ];

    # Rust hook + 继承原有 settings
    extraConfigLua = lib.mkIf (cfg.rust.enable && cfg.rust.autoInit) ''
      local oldSettings = vim.deepcopy(${lib.toString (config.plugins.leetcode-nvim.settings or {})})
      local rust_init = "${rustInitScript}"

      local leetcode_cfg = vim.tbl_deep_extend(
        "force",
        oldSettings,
        {
          hooks = {
            ["question_enter"] = {
              function()
                if vim.fn.expand("%:e") ~= "rs" then
                  return
                end

                local ok, _, code = os.execute(rust_init)
                if ok and code == 0 then
                  vim.notify("leetcode: rust-project.json updated", vim.log.levels.INFO)
                  vim.cmd("LspRestart rust_analyzer")
                else
                  vim.notify("leetcode: failed to update rust-project.json", vim.log.levels.ERROR)
                end
              end
            }
          }
        }
      )

      require("leetcode").setup(leetcode_cfg)
    '';
  };
}
