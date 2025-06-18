{pkgs, ...}: {
  vim = {
    startPlugins = with pkgs.vimPlugins; [
      vimtex
      undotree
      harpoon2
      lazygit-nvim
      base16-nvim
    ];
    extraPlugins = {
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
      toggleterm = {
        package = pkgs.vimPlugins.toggleterm-nvim;
        setup = "require('toggleterm').setup {}";
      };
    };
  };
}
