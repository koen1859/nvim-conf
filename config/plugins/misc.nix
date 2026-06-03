{pkgs, ...}: {
  vim = {
    autopairs.nvim-autopairs.enable = true;
    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };
    git.enable = true;
    utility = {
      oil-nvim.enable = true;
      surround.enable = true;
      diffview-nvim.enable = true;
    };
    filetree.nvimTree = {
      enable = true;
      mappings = {
        toggle = "<leader>fe";
      };
      openOnSetup = false;
    };
    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      highlight-undo.enable = true;
      indent-blankline.enable = true;
    };
    mini.tabline.enable = true;
    startPlugins = with pkgs.vimPlugins; [
      vimtex
      undotree
      harpoon2
      vim-dadbod
      vim-dadbod-ui
      vim-dadbod-completion
      zen-mode-nvim
      lazygit-nvim
      quarto-nvim
      vim-unicoder
      vim-wordy
      typst-vim
      typst-preview-nvim
      neocord
      CopilotChat-nvim
      texpresso-vim
    ];
    extraPackages = with pkgs; [
      texpresso
      (texliveFull.withPackages
        (ps:
          with ps; [
            latexmk
            amsmath
            marvosym
            bbm-macros
            minted
            texcount
            tocbibind
            latexindent
            adjustbox
            algpseudocodex
            algorithmicx
            algorithms
            fifo-stack
            varwidth
            tabto-ltx
            totcount
          ]))
    ];
    extraPlugins = {
      # jupytext-nvim = {
      #   package = pkgs.vimPlugins.jupytext-nvim;
      #   setup = ''
      #     require('jupytext').setup {
      #       style = "hydrogen",
      #       output_extension = "py",
      #       force_ft = "python",
      #     }
      #   '';
      # };
      scrollbar = {
        package = pkgs.vimPlugins.nvim-scrollbar;
        setup = "require('scrollbar').setup {}";
      };
      compiler = {
        package = pkgs.vimPlugins.compiler-nvim;
        setup = "require('compiler').setup {}";
      };
      csvview = {
        package = pkgs.vimPlugins.csvview-nvim;
        setup = "require('csvview').setup {}";
      };
      neoscroll = {
        package = pkgs.vimPlugins.neoscroll-nvim;
        setup = "require('neoscroll').setup {}";
      };
    };
  };
}
