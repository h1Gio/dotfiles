{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/desktop.nix
    ./modules/gaming.nix
    ./modules/hardware.nix
    ./modules/networking.nix
    ./modules/packages.nix
    ./modules/users.nix
  ];

  networking.hostName = "nixos";
  time.timeZone = "Europe/Lisbon";

  # Enable the modern Nix command interface and flakes for later learning.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Steam, NVIDIA's driver, and other applications require unfree packages.
  nixpkgs.config.allowUnfree = true;

  # Keep this equal to the release used for the initial installation.
  # For the NixOS 26.05 ISO shown in your Rufus screenshot, leave this at 26.05.
  system.stateVersion = "26.05";
}
