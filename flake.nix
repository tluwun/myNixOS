{
    description = "This is my flake for home-manager and NixOS";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
       
        nixvim = {
            url = "github:nix-community/nixvim";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix.url = "github:danth/stylix";

        ags.url = "github:Aylur/ags";
    };

    outputs = { nixpkgs, nixpkgs-stable, home-manager, ... }@inputs: let 

            system = "x86_64-linux";

            pkgs = nixpkgs.legacyPackages.${system};

        in {
            nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
                inherit system;
                
                modules = [ ./nixos/configuration.nix inputs.stylix.nixosModules.stylix ];
                
                specialArgs = {
                    
                    stablepkgs = import nixpkgs-stable {
                        inherit system;
                    };
                };
            };

            homeConfigurations.tluwun = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
       
                modules = [ ./home-manager/home.nix inputs.nixvim.homeManagerModules.nixvim ];

                extraSpecialArgs = {
                    stablepkgs = import nixpkgs-stable {
                        inherit system;
                    };
                    inherit inputs;
                };

            };

            devShells.${system}.default = pkgs.mkShell {
                packages = with pkgs; [ clang_19 llvm_19 clang-analyzer binutils python313Packages.django nasm nodejs_23 cmake ];
            };

            packages.${system}.default = pkgs.writeShellScriptBin "hello" ''
                echo "Hello world!"
            '';
        };
        
}
