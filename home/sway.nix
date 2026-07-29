{ ... }:

{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps

    config = rec {
      modifier = "Mod4";
      terminal = "ghostty";

      window = {
        border = 2;
        titlebar = false;
      };

      gaps = {
        inner = 10;
        outer = 5;
      };

      input = {
        "type:keyboard" = {
          xkb_layout = "es";
        };
      };

      startup = [
        { command = "noctalia-shell"; }
      ];
      
      bars = [];
    
    };
  };
}
