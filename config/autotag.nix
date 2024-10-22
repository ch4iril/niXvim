{ pkgs, ... }:
{

  plugins.ts-autotag.enable = true;

  plugins.ts-autotag = {
    package = pkgs.vimPlugins.nvim-ts-autotag;

  };

  plugins.ts-autotag.settings =

    {
      opts = {
        enable_close = true;
        enable_close_on_slash = false;
        enable_rename = true;
      };
      per_filetype = {
        html = {
          enable_close = false;
        };
      };
    };

  plugins.ts-autotag.settings.aliases =

    {
      astro = "html";
      blade = "html";
      eruby = "html";
      handlebars = "glimmer";
      hbs = "glimmer";
      htmldjango = "html";
      javascript = "typescriptreact";
      "javascript.jsx" = "typescriptreact";
      javascriptreact = "typescriptreact";
      markdown = "html";
      php = "html";
      rescript = "typescriptreact";
      rust = "rust";
      twig = "html";
      typescript = "typescriptreact";
      "typescript.tsx" = "typescriptreact";
      vue = "html";
    };



}
