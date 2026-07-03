{ config, pkgs, inputs, ... }:

{
  #Imports
  imports = [
    inputs.noctalia.homeModules.default
  ];

  # User Config
  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";
  home.stateVersion = "25.11"; 

  # User Packages
  home.packages = with pkgs; [
    # Browsers
    firefox
    obsidian
    yt-dlp
    ffmpeg
    kew
    glow
    vim
    lmstudio
    yazi
    vlc
    spotify
    discord
    ollama
    vscode
    opencode
    spek
    kew

    # System
    wget
    curl
    p7zip
    fzf
    tree
    cava
    btop
    python3
    unrar

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
        source = "nixos";
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

  #Noctalia-Shell
  programs.noctalia = {
    enable = true;
    
    settings = {
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Gruvbox";
      };

      wallpaper = {
        enabled = true;
        default.path = "./assets/wallpapers/wallhaven-pokg2e.png";

      };
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
