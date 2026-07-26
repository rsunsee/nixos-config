{ pkgs, inputs,  ... }:

{
  home.packages = with pkgs; [

    # Office
    obsidian
    zotero

    # Multimedia
    vlc
    ffmpeg
    spek
    kew
    mpv
    nur.repos.trev.helium

    # Game Development
    vscodium
    godot
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
