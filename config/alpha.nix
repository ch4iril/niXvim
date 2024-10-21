{pkgs, ...}:{

  plugins.alpha.enable = true;
  plugins.alpha.theme = "theta";
  plugins.dashboard = {
    package = pkgs.vimPlugins.dashboard-nvim;
  };

}
