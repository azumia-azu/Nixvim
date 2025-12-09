#NOTE: Python 调试器
# 如不需要直接在 ../dap/default.nix中注释即可。未来需要再打开注释
{
  plugins.dap-python.enable = true;
  extraPython3Packages = p:
    with p; [
      debugpy
    ];
}
