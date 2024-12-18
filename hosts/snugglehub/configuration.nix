{ config, pkgs, ... }:

{
  imports = [
    ../../modules/hyprland.nix
    ../../modules/system.nix
    ./hardware-configuration.nix
  ];

  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };

      systemd-boot.enable = true;
    };
  };

  networking = {
    hostName = "snugglehub";

    networkmanager = {
      enable = true;
    };
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  system.stateVersion = "24.11";
}
