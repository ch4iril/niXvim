{ pkgs, ... }:
{

  plugins.nvim-snippets.enable = true;

  plugins.nvim-snippets = {

    package = pkgs.vimPlugins.nvim-snippets;

  };

  plugins.nvim-snippets.settings =

    {
      create_autocmd = true;
      create_cmp_source = true;
      extended_filetypes = {
        typescript = [
          "typescript"
          "typescriptreact"
          "javascript"
          "javascriptreact"
	  "dart"

        ];
      };
      friendly_snippets = true;
      global_snippets = [
        "all"
      ];
      ignored_filetypes = [
        "haskel"
      ];
      search_paths = [
        {
          __raw = "vim.fn.stdpath('config') .. '/snippets'";
        }
      ];
    };

}
