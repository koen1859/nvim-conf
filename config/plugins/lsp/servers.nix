{
  lib,
  pkgs,
  ...
}: {
  vim.lsp = {
    enable = true;
    formatOnSave = true;
    trouble.enable = true;
    lspkind.enable = true;
    lspSignature.enable = true;
    servers = {
      ltex_ls = {
        enable = true;
        cmd = [(lib.getExe pkgs.ltex-ls)];
        filetypes = ["tex"];
      };
      texlab = {
        enable = true;
        cmd = [(lib.getExe pkgs.texlab)];
        filetypes = ["tex"];
      };
      nixd = {
        enable = true;
        cmd = [(lib.getExe pkgs.nixd)];
        filetypes = ["nix"];
      };
      pyright = {
        enable = true;
        cmd = ["${pkgs.pyright}/bin/pyright-langserver" "--stdio"];
        filetypes = ["python"];
      };
      ruff = {
        enable = true;
        cmd = [(lib.getExe pkgs.ruff) "server"];
        filetypes = ["python"];
      };
      sqls = {
        enable = true;
        cmd = [(lib.getExe pkgs.sqls)];
        filetypes = ["sql"];
      };
      ty = {
        enable = false;
        cmd = [(lib.getExe pkgs.ty) "server"];
        filetypes = ["python"];
      };
      r_language_server = {
        enable = true;
        cmd = [
          "${(pkgs.rWrapper.override {
            packages = with pkgs.rPackages; [languageserver];
          })}/bin/R"
          "--slave"
          "-e"
          "languageserver::run()"
        ];
        filetypes = ["r" "rmd"];
      };
      tinymist = {
        enable = true;
        cmd = [(lib.getExe pkgs.tinymist) "lsp"];
        filetypes = ["typst"];
      };
      phpactor = {
        enable = true;
        cmd = [(lib.getExe pkgs.phpactor) "language-server"];
        filetypes = ["php"];
      };
      lua_ls = {
        enable = true;
        cmd = [(lib.getExe pkgs.lua-language-server)];
        filetypes = ["lua"];
      };
      clangd = {
        enable = true;
        cmd = ["${pkgs.clang-tools}/bin/clangd"];
        filetypes = ["c" "cpp" "h" "hpp"];
      };
      rust-analyzer = {
        enable = true;
        cmd = [(lib.getExe pkgs.rust-analyzer)];
        filetypes = ["rust" "rs"];
      };
    };
  };
}
