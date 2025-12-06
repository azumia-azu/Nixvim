{
  #TODO: 尝试简单配置一下
  plugins.render-markdown.enable = true;
  plugins.render-markdown.lazyLoad = {
    enable = true;
    settings = {
      ft = ["markdown" "norg" "rmd" "org" "codecompanion"];
    };
  };
}
