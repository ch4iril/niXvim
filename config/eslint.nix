{pkgs, ...}:{
   plugins.lsp.servers.eslint = {
   enable = true;
   package = pkgs.vscode-langservers-extracted;
   autostart = true;
   filetypes = [
   "typescript" "javascript" "typescriptreact" "javascriptreact"
   ];
  };
}
