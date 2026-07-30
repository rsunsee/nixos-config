{ config, pkgs, inputs, ... }:

{
  imports = [
    ./packages.nix
    ./git.nix
    ./ghostty.nix
    ./fastfetch.nix
    ./cursor.nix
    ./ohmyzsh.nix
    ./zen-browser.nix
    ./zed-editor.nix
  ];

  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
