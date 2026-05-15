{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nur.url = "github:nix-community/NUR";
  };

  outputs = { self, nixpkgs, nur }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ({ ... }: {
          nixpkgs.overlays = [
            nur.overlays.default
          ];
        })

        ./configuration.nix
      ];
    };
  };
}
