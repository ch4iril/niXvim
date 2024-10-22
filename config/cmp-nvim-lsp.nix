{ pkgs, ... }:
{

    plugins.cmp-nvim-lsp.enable = true;
   
    plugins.cmp-nvim-lsp = {
    package = pkgs.vimPlugins.cmp-nvim-lsp;


  };

 
}
