{
  plugins.noice.enable = true;
  plugins.noice.lazyLoad = {
    settings = {
      event = ["DeferredUIEnter"];
    };
  };
  plugins.notify = {
    enable = true;
    settings = {
      timeout = 2000;
      background_colour = "#000000";
    };
  };
  plugins.notify.lazyLoad = {
    settings = {
      event = ["DeferredUIEnter"];
    };
  };
  plugins.noice.settings = {
    notify = {
      enabled = true;
      view = "notify";
    };
    lsp.progress.enabled = false;
    lsp.hover.enabled = false;
  };
}
