{ ... }:

{
  programs.ghostty = {
    enable = true;

    enableBashIntegration = true;

    settings = {

      font-family = "IosevkaTerm Nerd Font Mono";

      font-size = 13;

      background-opacity = 0.7;

      background-blur = true;

      background-blur-radius = 20;

      window-decoration = false;
    };
  };
}
