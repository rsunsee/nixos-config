{ config, pkgs, inputs, ... }:

{
  # User Config
  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";
  home.stateVersion = "25.11"; 

  # User Packages
  home.packages = with pkgs; [
    nur.repos.trev.helium
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    obsidian
    yt-dlp
    kew
    glow
    ghostty
    fastfetch
    noctalia-shell
    neovim
    git
    lmstudio
    heroic
    yazi
    vlc

    # System

    wget
    p7zip
    fzf
    tree
    cava
  ];

  # Git
  programs.git = {
    enable = true;
    userName = "rsunsee";
    userEmail = "roger09gg@proton.me";
  };

  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "/home/rsunsee/Pictures/fastfetch/nixowos";
        # Dependiendo de tu terminal, puedes ajustar el tamaño si es necesario:
        # width = 28;
        # height = 12;
      };
      display = {
        separator = " › ";
      };
      modules = [
        "title"
	"separator"
	"os"
        "kernel"
        "packages"
	"wm"
	"terminal"
	"disk"
	"publicip"
      ];
    };
  };


  # Home Manager
  programs.home-manager.enable = true;

}
