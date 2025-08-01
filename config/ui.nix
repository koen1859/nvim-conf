{
  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
      transparent = true;
    };
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
    filetree.neo-tree.enable = true;
    notify = {
      nvim-notify.enable = true;
    };
    tabline.nvimBufferline.enable = true;
    treesitter.context.enable = true;
    statusline.lualine = {
      enable = true;
      theme = "gruvbox";
    };

    telescope.enable = true;
    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;
      highlight-undo.enable = true;
      indent-blankline.enable = true;
      rainbow-delimiters.enable = true;
    };
    ui = {
      noice.enable = true;
      colorizer.enable = true;
      illuminate.enable = true;
      breadcrumbs = {
        enable = false;
        navbuddy.enable = false;
      };
      smartcolumn = {
        enable = true;
      };
      fastaction.enable = true;
    };
  };
}
