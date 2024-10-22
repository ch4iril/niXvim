{

  plugins.nvim-tree.enable = true;
  plugins.nvim-tree.actions.filePopup.openWinConfig = {
    border = "shadow";
    col = 1;
    relative = "cursor";
    row = 1;
    style = "minimal";
  };

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

}
