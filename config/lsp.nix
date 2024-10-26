{pkgs, ...}: {
  plugins.lsp.enable = true;
  plugins.lsp.servers.dartls.enable = true;
  plugins.lsp.servers.rust_analyzer.installCargo = false;
  plugins.lsp.servers.rust_analyzer.installRustc = false;
  plugins.lsp-status.enable = true;
  plugins.lsp.servers.tailwindcss.enable = true;
  plugins.lsp.servers.tailwindcss = {
    package = pkgs.tailwindcss-language-server;
    cmd = [];
  };

  # Lsp Capabilities
  #plugins.lsp.capabilities = "capabilities";



  # Lua
  plugins.lsp.servers.lua_ls = {
    enable = true;
    autostart = true;
    package = pkgs.lua-language-server;
  };

  # Typescript
  plugins.lsp.servers.ts_ls = {
    enable = true;
    autostart = true;
    package = pkgs.typescript-language-server;
   # cmd = {
   #    typescript.applyCodeAction
   #    arguments =  [tsp.CodeAction];
   # 
   #};
  };

  #NIXD
  plugins.lsp.servers.nixd = {
    enable = true;
    package = pkgs.nixd;
    autostart = true;
    settings = {
      nixpkgs = {
        expr = "import <nixpkgs> { }";
      };
      formatting = {
        command = ["alejandra"];
        options = {
          # nixos = {
          #    expr =  (builtins.getFlake) "${./configuration.nix}".nixosConfigurations.CONFIGNAME.options;
          # };

          #home_manager = {
          #  expr = builtins.getFlake (builtins.toString ./.).homeConfigurations.CONFIGNAME.options;
          # };
        };
      };
    };
    extraOptions = {
      offset_encoding = "utf-8";
    };
  };

  # shortcut
  plugins.lsp.keymaps.lspBuf = {
    K = "hover";
    gD = "references";
    gd = "definition";
    gi = "implementation";
    gt = "type_definition";
  };



}
