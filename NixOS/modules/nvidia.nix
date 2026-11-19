{ ... }:

{
  # Based on the previously discussed ASUS TUF laptop with an Intel iGPU
  # and NVIDIA RTX 3050 Ti Mobile. This assumes that is still the machine.
  # Verify the PCI IDs with `lspci -D` before enabling PRIME if the laptop changed.

  services.xserver.videoDrivers = [ "modesetting" "nvidia" ];

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    powerManagement.enable = true;

    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;
      intelBusId = "PCI:0@0:2:0";
      nvidiaBusId = "PCI:1@0:0:0";
    };
  };
}
