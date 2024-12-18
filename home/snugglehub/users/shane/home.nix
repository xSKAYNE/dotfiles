{ config, pkgs, ... }:

{
  imports = [
    ../../../common/default.nix
  ];

  home = {
    username = "shane";
    homeDirectory = "/home/shane";

    packages = with pkgs; [
      mangohud
      heroic
      steam
      gamemode
      wowup-cf
      discord
      spotify
      kmymoney
      jellyfin-media-player
      jellyfin-rpc
      ani-cli
      mpv
    ];

    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
}
