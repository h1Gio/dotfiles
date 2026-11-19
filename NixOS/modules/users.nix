{ pkgs, ... }:

{
  # Change "gio" below if your Linux username is different.
  # This adds groups and sets Fish as the login shell for the existing user.
  users.users.gio = {
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
      "docker"
    ];
  };

  programs.fish.enable = true;
}
