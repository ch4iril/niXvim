
{ pkgs, ...}:{
    plugins.fzf-lua.package = {
    fzf-lua.enable = true;
    extraPlugins = pkgs.telescope;

  };

}
