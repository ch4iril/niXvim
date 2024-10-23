{ pkgs, ... }:
{

 plugins.cmp.enable = true;
 plugins.cmp = {
   package = pkgs.vimPlugins.nvim-cmp;
 };

  plugins.cmp = {
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "path"; }
      { name = "bffer"; }
    ];
  };

  

 
  plugins.cmp.cmdline.typescript.completion.autocomplete = [
    "require('cmp.types').cmp.TriggerEvent.TextChanged"
  ];

  plugins.cmp.cmdline.typescript.completion.completeopt = "menu,menuone,noselect";

  plugins.cmp.cmdline.typescript.completion.keyword_length = 2;

  plugins.cmp.cmdline.typescript.view.entries = {
    name = "custom";
    selection_order = "top_down";
  };

  plugins.cmp.cmdline.typescript.view.docs.auto_open = true;

  plugins.cmp.cmdline.typescript.window.completion.scrollbar = true;

  plugins.cmp.filetype.typescript.mapping =

    {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<C-y>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
    };


plugins.cmp.cmdline.typescript.snippet.expand = 

''
  function(args)
    require('luasnip').lsp_expand(args.body)
  end
'';






}
