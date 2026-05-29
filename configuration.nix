# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Kernel Version
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Network
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Time Zone
  time.timeZone = "Europe/Madrid";

  # Internationalisation Properties
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_ES.UTF-8";
    LC_IDENTIFICATION = "es_ES.UTF-8";
    LC_MEASUREMENT = "es_ES.UTF-8";
    LC_MONETARY = "es_ES.UTF-8";
    LC_NAME = "es_ES.UTF-8";
    LC_NUMERIC = "es_ES.UTF-8";
    LC_PAPER = "es_ES.UTF-8";
    LC_TELEPHONE = "es_ES.UTF-8";
    LC_TIME = "es_ES.UTF-8";
  };

  # X11
  services.xserver.enable = false;

  # Asus
  services.asusd.enable = true;
  
  # Ly
  services.displayManager.ly.enable = true;

  # CUPS
  services.printing.enable = true;

  # Pipewire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = true;

  };
  
  # User
  users.users.rsunsee = {
    isNormalUser = true;
    shell = pkgs.bash;
    description = "rsunsee";
    extraGroups = [ "networkmanager" "wheel" "bluetooth" ];
    packages = with pkgs; [

    ];
  };

  fonts.packages = with pkgs; [
    nerd-fonts.iosevka # Main
    terminus_font # Retro
  ];

  # LocalSend
  programs.localsend.enable = true;

  # Niri
  programs.niri.enable = true;

  # Upower
  services.upower.enable = true;
  
  # Starship
  programs.starship.enable = true;
  
  # Unfree Packages
  nixpkgs.config.allowUnfree = true;

  # Virt Manager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["rsunsee"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  
  # Fallback Packages
  environment.systemPackages = with pkgs; [
   wget
   p7zip
   fzf
   tree
   cava
   nvd
   nix-output-monitor
  ];
  
  # Nix Helper
  programs.nh = {
    enable = true;
    # Activa la limpieza automática del almacenamiento (Garbage Collector)
    clean.enable = true;
    # Mantiene las generaciones de los últimos 7 días y mínimo 3 generaciones fijas
    clean.extraArgs = "--keep-since 7d --keep 3";
    # Indica la ruta absoluta hacia tu carpeta de configuración de NixOS
    flake = "/home/rsunsee/nixos-config"; 
  };

  # Nix Store Optimize
  nix.settings.auto-optimise-store = true;
  
  # Nix Store Garbage Collect
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 4d";
  };

  system.stateVersion = "25.11";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
