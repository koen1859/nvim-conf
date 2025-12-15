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
      jupytext-nvim
      vim-unicoder
      vim-wordy
      typst-vim
      typst-preview-nvim
      neocord
      CopilotChat-nvim
    ];
    extraPlugins = {
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
