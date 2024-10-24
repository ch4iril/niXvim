{ self, pkgs, inputs, ... }:
{
  plugins.lsp.enable = true;
  plugins.lsp.servers.dartls.enable = true;
  plugins.lsp.servers.ts_ls.enable = true;
  plugins.lsp.servers.ts_ls.autostart = true;
  plugins.lsp.servers.lua_ls.enable = true;
  plugins.lsp.servers.rust_analyzer.installCargo = false;
  plugins.lsp.servers.rust_analyzer.installRustc = false;
  plugins.lsp-status.enable = true;
  plugins.lsp.servers.tailwindcss.enable = true;
  plugins.lsp.servers.tailwindcss = {
    package = pkgs.tailwindcss-language-server;
    cmd = [];
  };

  plugins.lsp.keymaps.lspBuf = {
    K = "hover";
    gD = "references";
    gd = "definition";
    gi = "implementation";
    gt = "type_definition";
  };

  plugins.lsp.servers.nixd = {
    enable = true;
    package = pkgs.nixd;
    autostart = true;
    settings = {
       nixpkgs = {
          expr = "import <nixpkgs> { }";
     };
      formatting = {
      command = [ "alejandra" ];
      options = {
     # nixos = {
     #    expr =  (builtins.getFlake) "${./configuration.nix}".nixosConfigurations.CONFIGNAME.options;
     # };
      
      #home_manager = {
      #  expr = builtins.getFlake (builtins.toString ./.).homeConfigurations.CONFIGNAME.options;
      # };
      
      };  

      
    };
  

  extraOptions = {
    offset_encoding = "utf-8";
   };
 
  };

 };

}





