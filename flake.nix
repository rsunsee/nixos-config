{
  description = "nixos-btw";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # NIXPKGS

    nur.url = "github:nix-community/NUR"; # NUR

    home-manager = {
      url = "github:nix-community/home-manager"; # HOME-MANAGER
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell"; # NOCTALIA
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  outputs = { self, nixpkgs, nur, home-manager, noctalia, ... }@inputs: {
    nixosConfigurations.rog-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      
      specialArgs = { inherit inputs; };

      modules = [
        ./hosts/rog-laptop

        { nixpkgs.overlays = [ nur.overlays.default ]; }

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
	  home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.users.rsunsee = import ./home/default.nix;
        }
      ];
    };
  };
}
