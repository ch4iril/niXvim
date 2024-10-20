
{ pkgs, ...}:{

  plugins.cmp-nvim-lsp.package = {
    cmp-nvim-lsp.enable = true;
    extraPlugins = pkgs.vimPlugins.cmp-nvim-lsp;
  };

}
