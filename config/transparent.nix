{ pkgs, ...}:{

    plugins.transparent.enable = true;
       plugins.transparent = {
        package = pkgs.vimPlugins.transparent-nvim;
    };

}
