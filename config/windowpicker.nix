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
      "packer"
      "qf"
      "diff"
      "fugitive"
      "fugitiveblame"
    ];

  };

  plugins.nvim-tree.actions.windowPicker.picker = {
    __raw = "require('window-picker').pick_window";
  };

}
