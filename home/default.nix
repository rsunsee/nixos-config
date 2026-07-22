{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.noctalia.homeModules.default
    ./niri
    ./packages.nix
    ./git.nix
    ./ghostty.nix
    ./fastfetch.nix
    ./cursor.nix
    ./fonts.nix
    ./noctalia.nix
    ./ohmyzsh.nix
    ./zen-browser.nix
  ];

  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
