{ ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "eza";
    };

    oh-my-zsh = {
      enable = true;
      theme = "half-life";

      plugins = [
        "git"
        "sudo"
        "colored-man-pages"
      ];
    };
  };
}
