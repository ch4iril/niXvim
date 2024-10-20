
{pkgs, ...}:{
   plugins.alpha.package = {
     alpha.enable = true;
     extraPlugins = pkgs.vimPlugins.alpha-nvim;
     alpha.theme = "dashboard";
  };
}
