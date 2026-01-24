{pkgs, ...}: {
  vim.extraPlugins = {
    # gruvbox-material = {
    #   package = pkgs.vimPlugins.gruvbox-material-nvim;
    #   setup = ''
    #     require('gruvbox-material').setup({
    #       italics = true,
    #       contrast = "hard",
    #       comments = {
    #         italics = true,
    #       },
    #       background = {
    #         transparent = true,
    #       },
    #       float = {
    #         force_background = false,
    #         background_color = nil,
    #       },
    #       signs = {
    #         force_background = false,
    #         background_color = nil,
    #       },
    #       customize = nil,
    #     })
    #   '';
    # };
    gruvbox = {
      package = pkgs.vimPlugins.gruvbox-nvim;
      setup = ''
        require("gruvbox").setup({
          terminal_colors = true,
          undercurl = true,
          underline = true,
          bold = true,
          italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
          },
          strikethrough = true,
          invert_selection = false,
          invert_signs = false,
          invert_tabline = false,
          inverse = true,
          contrast = "hard",
          dim_inactive = false,
          transparent_mode = true,
        })
        vim.cmd("colorscheme gruvbox")
      '';
    };
  };
}
