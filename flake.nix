{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }:
    {
      nixosConfigurations = {
        snugglehub =
          nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
              ./hosts/snugglehub/configuration.nix

              home-manager.nixosModules.home-manager
              {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  backupFileExtension = "backup";

                  users = {
                    shane = import ./home/snugglehub/users/shane/home.nix;
                  };
                };
              }
            ];
          };

        ranni =
          nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
              ./hosts/ranni/configuration.nix

              home-manager.nixosModules.home-manager
              {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  backupFileExtension = "backup";

                  users = {
                    shane = import ./home/ranni/users/shane/home.nix;
                  };
                };
              }
            ];
          };
      };
    };
}
