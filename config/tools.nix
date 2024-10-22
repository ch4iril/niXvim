{

  plugins.typescript-tools.enable = true;
  plugins.typescript-tools.settings.includeCompletionsWithInsertText = true;

  plugins.lsp.servers.svelte.initOptions.svelte.plugin.typescript.hover.enable = true;

  plugins.typescript-tools.handlers =

    {
      "textDocument/publishDiagnostics" = ''
        require("typescript-tools.api").filter_diagnostics(
          -- Ignore 'This may be converted to an async function' diagnostics.
          { 80006 }
        )
      '';
    };

  plugins.typescript-tools.onAttach =

    "__lspOnAttach";

  plugins.typescript-tools.settings.completeFunctionCalls = true;

  plugins.typescript-tools.settings.tsserverFilePreferences =

    {
      tsserver_format_options = ''
        {
          allowIncompleteCompletions = false,
          allowRenameOfImportPath = false,
          ...
        }'';
    };

}
