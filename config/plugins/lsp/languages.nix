{
  vim.languages = {
    enableFormat = true;
    enableExtraDiagnostics = true;
    nix = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = true;
        type = "alejandra";
      };
    };
    typst = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = true;
        type = "typstyle";
      };
    };
  };
}
