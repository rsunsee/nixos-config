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
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    obsidian
    yt-dlp
    kew
    glow
    neovim
    lmstudio
    yazi
    vlc
    spotify

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

    settings = {
      user = {
        name = "rsunsee";
	email = "roger09gg@proton.me";
      };
    };
  };
  
  # Fastfetch
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "/home/rsunsee/Pictures/fastfetch/nixowos";
      };
      display = {
        separator = " -> ";
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
      ];
    };
  };

  #Ghostty
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    settings = {

      font-family = "IosevkaTerm Nerd Font Mono";
      font-size = 13;
      background-blur = true;
      background-opacity = 0.7;
      window-decoration = false;
      background-blur-radius = 20;

    };
  };

  # Cursor
  home.pointerCursor = {
    gtk.enable = true;

    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;
  };

  # Font
  fonts.fontconfig.enable = true;
  fonts.fontconfig.defaultFonts = {
    monospace = [ "Iosevka Nerd Font Mono" ];
    sansSerif = [ "Iosevka Nerd Font Propo" ];
    serif = [ "Iosevka Nerd Font Propo" ];
  };

  # let home manager manage itself
  programs.home-manager.enable = true;

}
