{pkgs, ...}:{

  plugins.dashboard.package = {
    plugins.dashboard.enable = true;
    extraPlugins = pkgs.vimPlugins.dashboard-nvim;

 };
}
