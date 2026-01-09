{pkgs, ...}: {
  plugins.leetcode = {
    enable = true;
    settings = {
      lang = "rust";
      injector = {
        rust.before = [
          "#![allow(dead_code)]" # fixes the dead_code warning for the function on the solution implementation
          ""
          "fn main(){}"
          "struct Solution;"
        ];
      };
      hooks.question_enter = [
        {
          # Setup rust lsp
          __raw =
            # lua
            ''
              function(question)
                if question.lang ~= "rust" then
                  return
                end

                local cargo_path = require("leetcode.config").user.storage.home .. "/Cargo.toml"
                local content = [[
                  [package]
                  name = "leetcode"
                  edition = "2024"

                  [lib]
                  name = "%s"
                  path = "%s"

                  [dependencies]
                  rand = "0.8"
                  regex = "1"
                  itertools = "0.14.0"
                ]]

                local file = io.open(cargo_path, "w")
                if file then
                  local formatted = (content:gsub(" +", "")):format(question.q.frontend_id, question:path())
                  file:write(formatted)
                  file:close()
                else
                  print("Failed to open file: " .. cargo_path)
                end

                -- like the extraPackages, only keep these two lines if you dont have a system-wide rust-toochain configured
                vim.env.RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}"
                vim.cmd("LspRestart rust_analyzer")
              end
            '';
        }
      ];
    };
  };
}