{
  description = "Neovim Configuration Flake with NVF";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nvf,
    ...
  }: {
    packages = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"] (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default =
        (nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./config];
        }).neovim;
    });
  };
}
