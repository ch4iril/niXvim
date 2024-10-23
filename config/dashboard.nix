{

  plugins.dashboard.enable = true;
  plugins.dashboard = {
    settings = {
      preview.file_height = 20;
      config.packages.enable = false;
      hide.tabline = false;
      change_to_vcs_root = true;
      config = {
        footer = [
  
            "NixVim From Scratch"
        ];
       

        header = [
        
                   "██████╗███████╗███████╗██████╗  ██████" 
                  "██╔════╝██╔════╝██╔════╝╚════██╗██╔═████"
                  "██║     █████╗  ███████╗ █████╔╝██║██╔██"
                  "██║     ██╔══╝  ╚════██║ ╚═══██╗████╔╝██"
                   "██████╗███████╗███████║██████╔╝╚██████"
                    "╚═════╝╚══════╝╚══════╝╚═════╝  ╚═══" 
                                                            

        ];
       # mru = {
       #   limit = 0;
       # };
        project = {
          enable = true;
        };
        shortcut = [
          {
            action = {
              __raw = "function(path) vim.cmd('ene') end";
            };
            desc = "New Files";
            group = "Label";
            key = "n";
          }
          {
            action = {
              __raw = "function(path) vim.cmd('Telescope find_files') end";
            };
            desc = "Files";
            group = "Label";
            key = "f";
          }

           {
            action = {
              __raw = "function(path) vim.cmd('Telescope live_grep') end";
            };
            desc = "Recent";
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

}
