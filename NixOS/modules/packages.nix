{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Build tools (rough equivalent of the useful parts of base-devel)
    gcc
    gnumake
    cmake
    ninja
    meson
    pkg-config

    # Shell, editor, and terminal tools
    git
    fish
    starship
    neovim
    fastfetch
    fzf
    ripgrep
    fd
    bat
    eza
    zoxide
    btop
    tealdeer
    curl
    wget
    jq
    unzip
    p7zip
    github-cli
    nmap

    # Hyprland desktop applications and utilities
    waybar
    kitty
    rofi-wayland
    mako
    hypridle
    hyprlock
    swaybg
    polkit_gnome
    qt5ct
    xwayland
    wmctrl

    # GTK theme, icons, and applications
    adwaita-gtk-theme
    adwaita-icon-theme
    firefox
    kdePackages.dolphin
    kdePackages.ark
    imv
    mpv

    # Audio, brightness, media keys, screenshots, clipboard
    pavucontrol
    brightnessctl
    playerctl
    wl-clipboard
    grim
    slurp
    libnotify
    copyq
    flameshot

    # Storage, system, and container utilities
    xdg-user-dirs
    docker-compose

    # Documentation
    man-pages
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.hack
    nerd-fonts.jetbrains-mono
    inter
  ];

  documentation.man.enable = true;
}
