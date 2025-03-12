{ config, ... }: {
	
	#boot.extraModulePackages = [ config.boot.kernelPackages.wireguard ];
	networking.wireguard = {
		enable = true;

<<<<<<< HEAD
        interfaces = {
            
        };
=======
>>>>>>> parent of b75e9af (Wireguard commit)
	};
}
