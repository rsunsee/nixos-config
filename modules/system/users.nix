{pkgs, ... }:

{
  programs.zsh.enable = true;
  users.users.rsunsee = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "rsunsee";
    extraGroups = [
      "networkmanager"
      "wheel"
      "bluetooth"
      "wireshark"
    ];
  };
}
