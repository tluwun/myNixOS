{ config, pkgs, ...}:
{
    gtk.enable = true;
    qt.enable = true;

    home = {
	
        username = "tluwun";
	
        homeDirectory = "/home/tluwun/";
		
        stateVersion = "24.11";          

    };

	imports = [
		./modules/bundle.nix
	];

    dconf.settings = {
        "org/virt-manager/virt-manager/connections" = {
            autoconnect = [ "qemu:///system" ];
            uris = [ "qemu:///system" ];
        };
    };
}
