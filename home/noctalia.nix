{ ... }:

{
  programs.noctalia = {
    enable = true;

    settings = {

      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Tokyo-Night";
      };

      wallpaper = {
        enabled = true;

        default.path = ../assets/wallpapers/a_cartoon_of_a_lake_with_rocks_and_flags.jpg;
      };
    };
  };
}
