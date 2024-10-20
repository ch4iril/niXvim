
{pkgs, ...}:{
    plugins.which-key.package = {
    which-key.enable = true;
    extraPlugins = pkgs.vimPlugins.which-key-nvim;
  };

}
