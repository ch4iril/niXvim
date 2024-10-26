{pkgs, ...}: {
  plugins = {
    cmp-path = {
      enable = true;
      package = pkgs.vimPlugins.cmp-path;
    };
  };
}
