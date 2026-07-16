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

    # Development
    vscode
    python3
    opencode
    woeusb-ng

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
