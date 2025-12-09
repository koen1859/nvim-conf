{
  lib,
  pkgs,
  ...
}: {
  vim = {
    visuals.fidget-nvim.enable = true;
    snippets.luasnip.enable = true;
    autocomplete = {
      blink-cmp = {
        enable = false;
        setupOpts.signature.enabled = true;
        friendly-snippets.enable = true;
      };
      nvim-cmp = {
        enable = true;
      };
    };
    treesitter.context.enable = false;
    lsp = {
      enable = true;
      formatOnSave = true;
      trouble.enable = true;
      lspkind.enable = true;
      lspSignature.enable = false;
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
        # ty = {
        #   enable = true;
        #   cmd = [(lib.getExe pkgs.ty) "server"];
        #   filetypes = ["python"];
        # };
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
        clang = {
          enable = true;
          cmd = ["${pkgs.clang-tools}/bin/clangd"];
          filetypes = ["c" "cpp" "h" "hpp"];
        };
      };
    };
    diagnostics = {
      enable = false;
      config = {
        virtual_text.enable = true;
      };
    };
    languages = {
      enableFormat = true;
      enableTreesitter = true;
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
  };
}
