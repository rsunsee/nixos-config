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
    discord
    ani-cli

    # Development
    python3
    opencode
    docker
    woeusb-ng
    vscodium

    # CLI
    wget
    httrack
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
