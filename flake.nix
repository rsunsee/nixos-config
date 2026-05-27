{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };  
  };

  outputs = { self, nixpkgs, nur, zen-browser, }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit zen-browser; };

      modules = [
        ({ ... }: {
          nixpkgs.overlays = [ nur.overlays.default ];
        })

        ./configuration.nix

      ];
    };
  };
}
