{ pkgs, ... }:


{

  plugins.neo-tree.enable = true;
  plugins.neo-tree = {
    package = pkgs.vimPlugins.neo-tree-nvim;
  };

  plugins.neo-tree.closeIfLastWindow = false;

  plugins.neo-tree.openFilesInLastWindow = true;

  plugins.neo-tree.buffers.window.mappings = {

    "." = "set_root";
    "<bs>" = "navigate_up";
    bd = "buffer_delete";

  };

}
