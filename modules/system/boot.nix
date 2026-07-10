{ pkgs, ... }:

{

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.consoleMode = "max";

  # Kernel Version
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
