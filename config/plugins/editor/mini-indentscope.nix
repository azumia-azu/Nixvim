{
  plugins.mini-indentscope.enable = true;
  plugins.mini-indentscope.lazyLoad = {
    enable = true;
    settings = {
      event = ["User LazyFile"];
    };
  };
  plugins.mini-indentscope.settings = {
    symbol = "│";
    options = {
      try_as_border = true;
    };
  };
}
