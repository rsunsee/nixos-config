{pkgs, ... }:

{
  users.users.rsunsee = {
    isNormalUser = true;
    shell = pkgs.bash;

    description = "rsunsee";

    extraGroups = [
      "networkmanager"
      "wheel"
      "bluetooth"
      "wireshark"
    ];
  };
}
