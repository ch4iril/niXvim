

{ pkgs, ... }:{
 
   plugins.airline = {
   enable = true;
   package = pkgs.vimPlugins.vim-airline-themes;

   };
}
