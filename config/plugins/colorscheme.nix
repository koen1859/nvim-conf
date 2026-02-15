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
    #         transparent = false,
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
          transparent_mode = false,
        })
        vim.cmd("colorscheme gruvbox")
      '';
    };
    # catppuccin = {
    #   package = pkgs.vimPlugins.catppuccin-nvim;
    #   setup = ''
    #     require("catppuccin").setup({
    #         flavour = "mocha",
    #         transparent_background = false,
    #         show_end_of_buffer = false,
    #         dim_inactive = {
    #             enabled = false,
    #             shade = "dark",
    #             percentage = 0.15,
    #         },
    #         no_italic = false,
    #         no_bold = false,
    #         no_underline = false,
    #         styles = {
    #             comments = { "italic" },
    #             strings = { "italic" },
    #         },
    #         lsp_styles = {
    #             virtual_text = {
    #                 errors = { "italic" },
    #                 hints = { "italic" },
    #                 warnings = { "italic" },
    #                 information = { "italic" },
    #                 ok = { "italic" },
    #             },
    #             underlines = {
    #                 errors = { "underline" },
    #                 hints = { "underline" },
    #                 warnings = { "underline" },
    #                 information = { "underline" },
    #                 ok = { "underline" },
    #             },
    #             inlay_hints = {
    #                 background = true,
    #             },
    #         },
    #         color_overrides = {},
    #         custom_highlights = {},
    #         default_integrations = true,
    #         auto_integrations = false,
    #         integrations = {
    #             cmp = true,
    #             gitsigns = true,
    #             nvimtree = true,
    #             notify = false,
    #             mini = {
    #                 enabled = true,
    #                 indentscope_color = "",
    #             },
    #         },
    #     })
    #     vim.cmd.colorscheme("catppuccin")
    #   '';
    # };
  };
}
