{ ... }:

{
  programs.zed-editor = {
    enable = true;

    userSettings = {
      languages = {
        Nix = {
          language_servers = [
            "nixd"
            "!nil"
          ];
        };
      };
    };  
  };
}
