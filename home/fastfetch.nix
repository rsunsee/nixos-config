{ ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {

      logo.source = "nixos";

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
