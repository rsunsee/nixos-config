{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Browser
    firefox

    # Office
    libreoffice-fresh
    obsidian
    zotero

    # Multimedia
    vlc
    spotify
    ffmpeg
    spek
    kew
    mpv
    youtube-tui

    # Development
    python3
    opencode
    docker
    lazydocker
    woeusb-ng
    vscodium

    # AI
    ollama
    lmstudio

    # CLI
    wget
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
