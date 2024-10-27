{pkgs, ...}: {
  plugins.luasnip = {
    enable = true;
    package = pkgs.vimPlugins.luasnip;
    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
    filetypeExtend = {
      lua = [
        "dart"
        "typescript"
        "typescriptreact"
        "javascript"
        "javascriptreact"
      ];
    };
    fromLua = [
      {}
      {paths = ./snippets;}
    ];
  };
}
