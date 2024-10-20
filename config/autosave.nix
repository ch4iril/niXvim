{ pkgs, ...}:{

    plugins.auto-save.package = {

       auto-save.enable = true;
       extraPlugins = pkgs.vimPlugins.auto-save-nvim;
    
    };


}
