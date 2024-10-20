{pkgs, ...}:{

    plugins.dashboard = {
    enable = true;
    package = pkgs.vimPlugins.dashboard-nvim;

 };
}
