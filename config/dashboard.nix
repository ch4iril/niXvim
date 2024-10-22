{ pkgs, ... }:
{

  plugins.dashboard.enable = true;
  plugins.dashboard = {
    package = pkgs.vimPlugins.dashboard-nvim;
  };

  plugins.dashboard.settings.theme = "doom";

  plugins.dashboard.settings.config.header =

    [

      "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
      "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
      "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
      "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
      "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
      "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"

    ];

  plugins.dashboard.settings.config.center =

    [

      {
        action = {
          __raw = "function(path) vim.cmd('Telescope find_files') end";
        };
        desc = "Files";
        group = "Label";
        icon = " ";
        icon_hl = "@variable";
        key = "f";
      }
      {
        action = {
          __raw = "function(path) vim.cmd('ene') end";
        };
        desc = "New Files";
        group = "Label";
        icon = " ";
        icon_hl = "@variable";
        key = "n";
      }

    ];

  plugins.dashboard.settings.config.week_header.enable = false;

  plugins.dashboard.settings.hide.statusline = false;

  plugins.dashboard.settings.hide.tabline = false;

}
