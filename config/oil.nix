{ pkgs, ... }:
{

  plugins.oil.enable = true;

  plugins.oil = {

    package = pkgs.vimPlugins.oil-nvim;

  };

  plugins.oil.settings =

    {
      columns = [
        "icon"
      ];
      keymaps = {
        "<C-c>" = false;
        "<C-l>" = false;
        "<C-r>" = "actions.refresh";
        "<leader>qq" = "actions.close";
        "y." = "actions.copy_entry_path";
        "-" = "actions.parent";
        "<C-h>" = "actions.select_split";
        "<C-p>" = "actions.preview";
        "<C-s>" = "actions.select_vsplit";
        "<C-t>" = "actions.select_tab";
        "<CR>" = "actions.select";
        _ = "actions.open_cwd";
        "`" = "actions.cd";
        "g." = "actions.toggle_hidden";
        "g?" = "actions.show_help";
        "g\\" = "actions.toggle_trash";
        gs = "actions.change_sort";
        gx = "actions.open_external";
        "~" = "actions.tcd";
      };
      skip_confirm_for_simple_edits = true;
      view_options = {
        show_hidden = false;
      };
      win_options = {
        concealcursor = "ncv";
        conceallevel = 3;
        cursorcolumn = false;
        foldcolumn = "0";
        list = false;
        signcolumn = "no";
        spell = false;
        wrap = false;
      };

      plugins.oil.settings.preview.border = "rounded";

      plugins.oil.settings.preview.height = 0.9;
      plugins.oil.settings.preview.max_width = 0.9;
      plugins.oil.settings.preview.min_height = 0.9;
      plugins.oil.settings.float.border = "rounded";

    };

}
