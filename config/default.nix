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

  ];
}
