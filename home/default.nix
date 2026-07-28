{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.noctalia.homeModules.default
    ./packages.nix
    ./sway.nix
    ./git.nix
    ./ghostty.nix
    ./fastfetch.nix
    ./cursor.nix
    ./noctalia.nix
    ./ohmyzsh.nix
    ./zen-browser.nix
  ];

  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
