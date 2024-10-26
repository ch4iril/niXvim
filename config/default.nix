{
  # Import all your configuration modules here
  imports = [
    {
      config = {
        opts = {
          number = true;
          relativenumber = true;
          shiftwidth = 2;
        };
      };
     
    }

    ./bufferline.nix
    ./lsp.nix
    ./colorscheme.nix
    ./treesitter.nix
    ./tools.nix
    ./which-key.nix
    ./yanky.nix
    ./neo-tree.nix
    ./autosave.nix
    ./clipboard.nix
    ./fzf.nix
    ./keymaps.nix
    ./lualine.nix
    ./nvim-tree.nix
    ./toggleterm.nix
    ./dashboard.nix
    ./transparent.nix
    ./semantictokens.nix
    ./oil.nix
    ./cmp-nvim-lua.nix
    ./cmp-utils.nix
    ./cmp-nvim-lsp.nix
    ./cmp.nix
    ./autotag.nix
    ./trouble.nix
    ./luasnip.nix
    ./comment.nix
    ./freindlysnippets.nix
    ./tscontext.nix
    ./cmp-buffer.nix
    ./cmp-path.nix
    ./cmp-rg.nix
    ./nvim-snippets.nix
    






  ];
}
