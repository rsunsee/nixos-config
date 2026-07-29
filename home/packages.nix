{ pkgs, inputs,  ... }:

{
  home.packages = with pkgs; [

    # Office
    obsidian
    zotero

    # System
    noctalia

    # Multimedia
    vlc
    ffmpeg
    spek
    kew
    mpv
    kdePackages.dolphin
    nur.repos.trev.helium

    # Game Development
    zed-editor
    godot_4_7
    ardour
    aseprite
    krita
    audacity

    # CLI
    python3
    wget
    bat
    eza
    ripgrep
    curl
    tree
    btop
    fzf
    yazi
    glow
    yt-dlp
    vim
    p7zip
    unrar
    cava
    mpvpaper
  ];
}
