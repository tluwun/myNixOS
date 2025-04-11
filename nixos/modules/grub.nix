{ pkgs, ... }: 
{
    boot = { 
        loader = {
            grub = {
                enable = true;
                efiSupport = true;
                useOSProber = true;

                device = "nodev";

                theme = import ./grub-theme.nix { inherit pkgs; };

            };
            efi.canTouchEfiVariables = true;

        };

        kernelPackages = pkgs.linuxPackages_latest;            
    };

}
