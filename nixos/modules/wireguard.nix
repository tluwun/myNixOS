{ config, ... }: {
	
	#boot.extraModulePackages = [ config.boot.kernelPackages.wireguard ];
	networking.wireguard = {
		enable = true;

        interfaces = {
            
        };
	};
}
