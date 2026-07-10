{ ... }:

{
  programs.zsh = {
    enable = true;

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
