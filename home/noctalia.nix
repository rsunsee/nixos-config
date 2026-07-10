{ ... }:

{
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

        default.path = ../assets/wallpapers/wallhaven-pokg2e.png;
      };
    };
  };
}
