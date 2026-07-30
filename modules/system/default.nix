{ ... }:

{
  imports = [
    ./boot.nix
    ./networking.nix
    ./locale.nix
    ./users.nix
    ./fonts.nix
    ./nix-ld.nix
    ./nix.nix
  ];
}
