{ pkgs, ... }:
let
  # Example of building your own grammar
  treesitter-nu-grammar = pkgs.tree-sitter.buildGrammar {
    language = "nu";
    version = "0.0.0+rev=0bb9a60";
    src = pkgs.fetchFromGitHub {
      owner = "nushell";
      repo = "tree-sitter-nu";
      rev = "0bb9a602d9bc94b66fab96ce51d46a5a227ab76c";
      hash = "sha256-A5GiOpITOv3H0wytCv6t43buQ8IzxEXrk3gTlOrO0K0=";
    };
    meta.homepage = "https://github.com/nushell/tree-sitter-nu";
  };

  # or you can yoink any grammars in tree-sitter.grammars.${grammar-name}
  # treesitter-nu-grammar = pkgs.tree-sitter-grammars.tree-sitter-nu;
in
{

  programs.nixvim.plugins = {
    treesitter = {
      enable = true;
      settings.indent.enable = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars ++ [
        treesitter-nu-grammar
      ];
    };

    extraConfigLua =
      ''
        do
          local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
          -- change the following as needed
          parser_config.nu = {
            install_info = {
              url = "${treesitter-nu-grammar}", -- local path or git repo
              files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
              -- optional entries:
              --  branch = "main", -- default branch in case of git repo if different from master
              -- generate_requires_npm = false, -- if stand-alone parser without npm dependencies
              -- requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
            },
            filetype = "nu", -- if filetype does not match the parser name
          }
        end
      '';

    # Add as extra plugins so that their `queries/{language}/*.scm` get
    # installed and can be picked up by `tree-sitter`
    extraPlugins = [
      treesitter-nu-grammar
    ];

  };

}

