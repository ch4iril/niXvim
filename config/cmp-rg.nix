{pkgs, ...}: {
  plugins = {
    cmp-rg = {
      enable = true;
      package = pkgs.vimPlugins.cmp-rg;
    };
  };
}
