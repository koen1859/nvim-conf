# Neovim Configuration with NVF
- To test: `nix run github:koen1859/nvim-conf`
- To build: `nix build github:koen1859/nvim-conf`

- Installation with home manager via flake
```nix 
{
  description = "Example to include this config with home manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvim-conf = {
      url = "github:koen1859/nvim-conf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nvim-conf,
    ...
  } @ inputs: let
    system = "x86_64-linux"; # Or any other valid entry
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    homeConfigurations = {
      "username@hostname" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
        ];
        extraSpecialArgs = {inherit inputs;};
        home.packages = [
          nvim-conf.packages.${pkgs.system}.default
        ];
      };
    };
  };
}
``` 

