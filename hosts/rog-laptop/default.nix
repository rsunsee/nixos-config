{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system
    ../../modules/hardware
    ../../modules/desktop
    ../../modules/services
    ../../modules/packages.nix
  ];

  networking.hostName = "rog-laptop";

  system.stateVersion = "25.11";
}
