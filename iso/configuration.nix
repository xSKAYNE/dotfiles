{ pkgs, modulesPath, ... }:

{
  imports = [
    "${modulesPath}/installer/cd-dvd/installation-cd-graphical-gnome.nix"
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
  };

  networking = {
    hostName = "iso";
  };

  nixpkgs = {
    hostPlatform = "x86_64-linux";
    config.allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
}
