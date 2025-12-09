{
  vim = {
    dashboard.startify = {
      enable = true;
      customHeader = [
        "      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
        "      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
        "      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
        "      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
        "      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
        "      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"
      ];
      commands = [
        {ff = "Telescope fd";}
        {fg = "Telescope live_grep";}
        {fe = "Oil";}
        {g = "LazyGit";}
      ];
      lists = [
        {type = "commands";}
        {type = "dir";}
      ];
      skipList = [
        "flake.lock"
      ];
      changeToDir = false;
    };

    notify = {
      nvim-notify = {
        enable = false;
        setupOpts.background_colour = "#000000";
      };
    };

    tabline.nvimBufferline.enable = false;

    statusline.lualine = {
      enable = true;
      theme = "gruvbox";
    };

    telescope.enable = true;

    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      highlight-undo.enable = true;
      indent-blankline.enable = true;
    };

    ui = {
      borders = {
        enable = true;
        plugins = {
          nvim-cmp.enable = true;
          fastaction.enable = true;
          lsp-signature.enable = true;
          which-key.enable = true;
        };
      };
      noice.enable = false;
      colorizer.enable = true;
      illuminate.enable = true;
      breadcrumbs = {
        enable = false;
        navbuddy.enable = false;
      };
      smartcolumn = {
        enable = true;
      };
      fastaction.enable = false;
    };
  };
}
