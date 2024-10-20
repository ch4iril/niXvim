{ pkgs, ...}:{

    plugins.auto-save.package = {
       plugins.auto-save.enable = true;
       extraPlugins = pkgs.vimPlugins.auto-save-nvim;
    
    };


}
