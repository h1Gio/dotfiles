{ pkgs, ... }:

{
  # Use iwd directly, as in your Arch setup, rather than NetworkManager.
  networking.networkmanager.enable = false;
  networking.wireless.iwd.enable = true;

  environment.systemPackages = with pkgs; [
    impala
  ];
}
