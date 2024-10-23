{ pkgs, ... }:
{

  plugins.friendly-snippets = {

    enable = true;

    package = pkgs.vimPlugins.friendly-snippets;

  };

}
