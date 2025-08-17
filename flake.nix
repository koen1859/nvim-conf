{
  description = "Neovim Configuration Flake with NVF";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    systems.url = "github:nix-systems/default";
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    systems,
    ...
  }: let
    eachSystem = nixpkgs.lib.genAttrs (import systems);
  in {
    packages = eachSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default =
        (nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./config];
        }).neovim;
    });
    homeModules.default = {pkgs, ...} @ args: import ./module.nix (args // {self = self;});
  };
}
