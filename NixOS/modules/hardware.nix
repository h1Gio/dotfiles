{ pkgs, ... }:

{
  # Graphics stack. The NVIDIA driver and PRIME setup are in nvidia.nix.
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Intel CPU microcode. Remove this if the laptop does not have an Intel CPU.
  hardware.cpu.intel.updateMicrocode = true;

  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  # Removable drives / file manager integration
  services.udisks2.enable = true;

  # Laptop power and firmware management
  services.power-profiles-daemon.enable = true;
  services.fwupd.enable = true;

  # Docker daemon
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    udiskie
    acpi
    fwupd
    power-profiles-daemon
  ];
}
