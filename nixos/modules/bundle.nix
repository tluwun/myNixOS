{

    imports = [
        ./env-var.nix
        ./grub.nix
        ./network.nix
        ./packages.nix
        ./hyprland.nix
        ./sound.nix
        ./sddm.nix
        ./users.nix
    	./root.nix
        ./garbage.nix
        ./apparmor.nix
        ./stablePackages.nix
        ./scripts.nix
        ./bluetooth.nix
        ./udisks.nix
        #./stylix.nix
        ./wireguard.nix
        #./xserver.nix
        ./virt-manager.nix
        ./tlp.nix
        ./zram.nix
        ./wireguard.nix
    ];
    #disableModules = [
        #"./wireguard.nix"
        #"./xserver.nix"
    #];
}
