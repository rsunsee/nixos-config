{
  description = "nixos-btw";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell/v5";
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  outputs = { self, nixpkgs, nur, home-manager, noctalia, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      
      # Al pasar "inputs", todos tus modulos (y Home Manager) 
      # tendran acceso a zen-browser, nur, etc.
      specialArgs = { inherit inputs; };

      modules = [
        # 1. Tu configuracion base del sistema
        ./configuration.nix

        # NUR overlay
        { nixpkgs.overlays = [ nur.overlays.default ]; }

        # Home Manager
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          
	  home-manager.extraSpecialArgs = { inherit inputs; };

          home-manager.users.rsunsee = import ./home.nix;
        }
      ];
    };
  };
}
