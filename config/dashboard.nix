{
  plugins = {
    dashboard = {
      enable = true;
      settings = {
        config.packages.enable = false;
	hide.statusline = true;
        change_to_vcs_root = false;
        config = {
          footer = [
            "NixVim From Scratch"
            "🚀ch4iril"
          ];

          header = [



            "██████╗███████╗███████╗██████╗  ██████"
            "██╔════╝██╔════╝██╔════╝╚════██╗██╔═████"
            "██║     █████╗  ███████╗ █████╔╝██║██╔██"
            "██║     ██╔══╝  ╚════██║ ╚═══██╗████╔╝██"
            "██████╗███████╗███████║██████╔╝╚██████"
            "╚═════╝╚══════╝╚══════╝╚═════╝  ╚═══"


            
          ];
          mru = {
            limit = 5;
          };
          project = {
            enable = false;
          };
          shortcut = [
            {
              action = {
                __raw = "function(path) vim.cmd('ene') end";
              };
              desc = "  New Files";
              group = "Label";
              icon_hl = "@variable";
              key = "n";
            }
            {
              action = {
                __raw = "function(path) vim.cmd('Telescope find_files') end";
              };
              desc = " Files";
              group = "Label";
              key = "f";
            }

            {
              action = {
                __raw = "function(path) vim.cmd('Telescope live_grep') end";
              };
              desc = "  Recent";
              group = "Label";
              key = "r";
            }
          ];
          week_header = {
            enable = false;
          };
        };
        theme = "hyper";
      };
    };
  };
}


