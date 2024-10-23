{ pkgs, ... }:
{

  plugins.luasnip.enable = true;

  plugins.luasnip.settings =

    {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };

  plugins.luasnip = {

    package = pkgs.vimPlugins.luasnip;

  };

  plugins.luasnip.filetypeExtend =

    {
      lua = [
        "c"
        "cpp"
        "dart"
        "python"
        "typescript"
        "typescriptreact"
        "javascript"
	"javascriptreact"
      ];
    };
}
