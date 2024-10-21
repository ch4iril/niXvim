


{ pkgs, ...}:{
   plugins.lualine = {
      enable = true;
      package = pkgs.vimPlugins.lualine-nvim;
   };

   plugins.lualine.gitPackage = pkgs.git;
   
}
