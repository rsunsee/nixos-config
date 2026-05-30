{ config, pkgs, inputs, ... }:

{
  # User Config
  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";
  home.stateVersion = "25.11"; 

  # User Packages
  home.packages = with pkgs; [
    # Browsers
    nur.repos.trev.helium
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    obsidian
    yt-dlp
    kew
    glow
    noctalia-shell
    neovim
    lmstudio
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
  
  # Fastfetch
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "/home/rsunsee/Pictures/fastfetch/nixowos";
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

  #Ghostty
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    settings = {

      # Font
      font-family = "Iosevka Nerd Font";
      font-size = 13;

      # Style
      background-blur = true;
      background-opacity = 0.7;
      window-decoration = false;
      background-blur-radius = 20;
    };
  };

  # let home manager manage itself
  programs.home-manager.enable = true;

}
