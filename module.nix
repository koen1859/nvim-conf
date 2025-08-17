{
  config,
  lib,
  pkgs,
  self,
  ...
}: let
  cfg = config.programs.nvim-conf;
in {
  options.programs.nvim-conf = {
    enable = lib.mkEnableOption "Enable custom NVF-based Neovim config";
  };

  config = lib.mkIf cfg.enable {
    home.packages = [
      self.packages.${pkgs.system}.default
    ];
  };
}
