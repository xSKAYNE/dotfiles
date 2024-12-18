{ config, pkgs, ... }:

{
  imports = [
    ../../modules/hyprland.nix
    ../../modules/system.nix
    ./hardware-configuration.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      efi = {
        canTouchEfiVariables = true;
      };

      systemd-boot.enable = true;
    };
  };

  networking = {
    hostName = "ranni";

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
