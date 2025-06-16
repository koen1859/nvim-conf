# Neovim Configuration with NVF
- To test: `nix run github:koen1859/nvim-conf`
    
```nix 
{ 
    description = "Minimal flake"; 

    inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; 

    outputs = { 
        self, 
        nixpkgs 
        }: { 
            defaultPackage.x86_64-linux = import nixpkgs { 
                system = "x86_64-linux"; 
            }; 
        }; 
}
``` 

