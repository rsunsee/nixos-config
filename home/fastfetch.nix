{ ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {

      logo.source = "/home/rsunsee/nixos-config/assets/ascii-art/angel";

      display.separator = " : ";

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
}
