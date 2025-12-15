{
  vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;
    nix = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = true;
        type = "alejandra";
      };
    };
    python = {
      enable = true;
      lsp.enable = false;
      format.enable = false;
    };
    r = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = false;
        type = "styler";
      };
    };
    php = {
      enable = true;
      lsp.enable = false;
    };
    lua = {
      enable = true;
      lsp.enable = false;
    };
    typst = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = true;
        type = "typstyle";
      };
    };
    sql = {
      enable = true;
      lsp.enable = false;
    };
    html.enable = true;
    clang = {
      enable = true;
      lsp.enable = false;
    };
  };
}
