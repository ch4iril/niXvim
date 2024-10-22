{ pkgs, ... }:{

      plugins.auto-save = {
       enable = true;
       package = pkgs.vimPlugins.auto-save-nvim;
    
  };
}



