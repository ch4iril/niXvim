{pkgs, ...}: {
  plugins.nvim-snippets = {
    enable = true;

    package = pkgs.vimPlugins.nvim-snippets;

    settings = {
      create_autocmd = true;
      create_cmp_source = true;
      extended_filetypes = {
        typescript = [
          "javascript"
	  "typescript"
        ];
      };
      friendly_snippets = true;
      global_snippets = [
        "all"
      ];
      ignored_filetypes = [
        "lua"
      ];
      search_paths = [
        {
          __raw = "vim.fn.stdpath('config') .. './snippets'";
        }
      ];
    };
  };
}
