{pkgs, ...}: {
  vim.extraPlugins = {
    tiny-inline-diagnostic = {
      package = pkgs.vimPlugins.tiny-inline-diagnostic-nvim;
      setup = ''
        require('tiny-inline-diagnostic').setup {
          preset = "modern",
          transparent_bg = false,
          options = {
            show_source = {
              enabled = true,
              if_many = false,
            },
            multilines = {
              enabled = true,
              always_show = false,
            },
          },
        }
      '';
    };
  };
}
