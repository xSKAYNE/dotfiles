{ config, pkgs, ... }:

{
  imports = [
    ../../../common/default.nix
    ./programs/vscode.nix
  ];

  home = {
    username = "shane";
    homeDirectory = "/home/shane";

    packages = with pkgs; [
      discord
      spotify
      kmymoney
      jellyfin-media-player
      jellyfin-rpc
      ani-cli
      mpv
      nodejs_23
    ];

    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
}
