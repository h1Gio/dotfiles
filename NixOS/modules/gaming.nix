{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    prismlauncher
    mangohud
    wineWowPackages.stable
    winetricks
  ];
}
