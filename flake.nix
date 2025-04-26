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

        nur = {
            url = "github:nix-community/NUR";
            inputs.nixpkgs.follows = "nixpkgs";
        };

    };

    outputs = { nixpkgs, nixpkgs-stable, home-manager, nur, ... }@inputs: let 

            system = "x86_64-linux";

            pkgs = nixpkgs.legacyPackages.${system};

        in {
            nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
                inherit system;
                
                modules = [ ./nixos/configuration.nix nur.modules.nixos.default ];
                
                specialArgs = {
                    
                    stablepkgs = import nixpkgs-stable {
                        inherit system;
                    };
                };
            };

            homeConfigurations.tluwun = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
       
                modules = [ ./home-manager/home.nix inputs.nixvim.homeManagerModules.nixvim nur.modules.homeManager.default ];

                extraSpecialArgs = {

                    stablepkgs = import nixpkgs-stable {
                        inherit system;
                    };

                    nurpkgs = import nur {
                        inherit system;
                    };

                    inherit inputs;
                };

            };

            devShells.${system}.default = pkgs.mkShell {
                packages = with pkgs; [ clang_19 llvm_19 nasm nodejs_23 cmake go typescript ];
                shellHook = ''
                  fish

                  export CC=clang
                  export CXX=clang++
                  export NM=llvm-nm
                  export AR=llvm-ar
                  export RANLIB=llvm-ranlib
                '';
            };
        };
}
