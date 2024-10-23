{ pkgs, ... }:
{
  plugins.lsp.enable = true;
  plugins.lsp.servers.nixd = {
    enable = true;
    extraOptions = {
      offset_encoding = "utf-8";
    };
  };

  plugins.lsp.servers.dartls.enable = true;
  plugins.lsp.servers.nixd.autostart = true;
  plugins.lsp.servers.ts_ls.enable = true;
  plugins.lsp.servers.ts_ls.autostart = true;
  plugins.lsp.servers.lua_ls.enable = true;
  plugins.lsp.servers.rust_analyzer.installCargo = false;
  plugins.lsp.servers.rust_analyzer.installRustc = false;
  plugins.lsp-status.enable = true;
  plugins.lsp.servers.tailwindcss.enable = true;
  plugins.lsp.servers.tailwindcss = {
    package = pkgs.tailwindcss-language-server;
  };
  plugins.lsp.servers.tailwindcss.cmd = [ ];

  plugins.lsp.keymaps.lspBuf = {
    K = "hover";
    gD = "references";
    gd = "definition";
    gi = "implementation";
    gt = "type_definition";
  };

}
