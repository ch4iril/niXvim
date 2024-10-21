{ pkgs, ... }:
{

  plugins.toggleterm.enable = true;
  plugins.toggleterm = {

    package = pkgs.vimPlugins.toggleterm-nvim;

  };

}
