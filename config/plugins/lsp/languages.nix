{
  vim.languages = {
    enableDAP = true;
    clang = {
      enable = true;
      lsp.enable = false;
    };
    python = {
      enable = true;
      lsp.enable = false;
      format.enable = false;
    };
    rust = {
      enable = true;
      lsp.enable = false;
      format.enable = false;
    };
    nix = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = true;
        type = ["alejandra"];
      };
    };
    typst = {
      enable = true;
      lsp.enable = false;
      format = {
        enable = true;
        type = ["typstyle"];
      };
    };
  };
}
