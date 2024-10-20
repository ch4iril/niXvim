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
     ./airline.nix
     ./autosave.nix
     #./alpha.nix
     ./snipp.nix
     ./clipboard.nix
     ./fzf.nix
     ./keymaps.nix
     ./lualine.nix
     ./windowpicker.nix
     ./nvim-tree.nix
     ./toggleterm.nix
     ./dashboard.nix
     ./transparent.nix

  ];
}
