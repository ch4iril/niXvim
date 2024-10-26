{pkgs, ...}: {
  plugins.cmp-buffer = {
    enable = true;
    package = pkgs.vimPlugins.cmp-buffer;
  };
}
