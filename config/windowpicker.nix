{

  plugins.nvim-tree.actions.windowPicker.enable = true;

  plugins.nvim-tree.actions.windowPicker.exclude = {

    buftype = [
      "nofile"
      "terminal"
      "help"
    ];
    filetype = [
      "notify"
      "lazy"
      "fugitive"
      "fugitiveblame"
    ];

  };

}
