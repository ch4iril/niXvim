{pkgs, ...}:{

  plugins.dashboard.package = {
    dashboard.enable = true;
    extraPlugins = pkgs.vimPlugins.dashboard-nvim;

 };
}
