{ config, pkgs, inputs, ... }:

{
  # Modifica esto con tu usuario y tu ruta
  home.username = "rsunsee";
  home.homeDirectory = "/home/rsunsee";

  # No toques esto. Es la versión de compatibilidad inicial.
  home.stateVersion = "25.11"; 

  # Paquetes específicos para tu usuario (cosas CLI o apps)
  home.packages = with pkgs; [
    fastfetch
    inputs.zen-browser.packages."x86_64-linux".default
  ];

  # Configuración directa de programas mediante Home Manager
  programs.git = {
    enable = true;
    userName = "rsunsee";
    userEmail = "roger09gg@proton.me";
  };

  # Deja que Home Manager se gestione a sí mismo
  programs.home-manager.enable = true;
}
