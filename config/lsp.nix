{pkgs, ...}: {
  plugins.none-ls = {
    enable = true;
    enableLspFormat = false;
  };

  plugins.lsp = {
    enable = true;
    servers.dartls = {
      enable = true;
      filetypes = ["dart"];
    };
    servers.tailwindcss.enable = true;
    servers.lua_ls.enable = true;
    servers.ts_ls = {
      enable = true;
      filetypes = [
        "javascript"
        "javascriptreact"
        "typescript"
        "typescriptreact"
      ];
      extraOptions = {
        settings = {
          javascript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
        };
      };
    };
    servers.nixd = {
      enable = true;
      package = pkgs.nixd;
      autostart = true;
      settings = {
        nixpkgs = {
          expr = "import <nixpkgs> { }";
        };
        formatting = {
          command = ["alejandra"];
        };
      };
      extraOptions = {
        offset_encoding = "utf-8";
      };
    };
  };

  plugins = {
    conform-nvim = {
      settings = {
        formatters_by_ft.javascript = ["prettier"];
        formatters_by_ft.typescript = ["prettier"];
        formatters_by_ft.javascriptreact = ["prettier"];
        formatters_by_ft.typescriptreact = ["prettier"];
      };
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
