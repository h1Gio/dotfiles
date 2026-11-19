{ pkgs, ... }:

{
  # Hyprland and login manager
  programs.hyprland.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  # Desktop portals: file pickers, screen sharing, and app integration.
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };

  # Authentication prompts for graphical applications.
  security.polkit.enable = true;
  programs.dconf.enable = true;

  # PipeWire audio stack.
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };
  services.pulseaudio.enable = false;

  # Useful defaults for GTK/Qt applications with your dark desktop.
  environment.sessionVariables = {
    GTK_THEME = "Adwaita-dark";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    NIXOS_OZONE_WL = "1";
  };
}
