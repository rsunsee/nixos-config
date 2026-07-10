{ pkgs, ...}:

{
  fonts.packages = with pkgs; [
    nerd-fonts.iosevka
    terminus_font
  ];
}
