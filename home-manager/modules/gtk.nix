{ stablepkgs, pkgs, ... }: {
    	gtk = {
        
        	enable = true;

            theme = {
            	package = pkgs.gruvbox-gtk-theme;
            	name = "Gruvbox-Dark";
            };
        
            iconTheme = {
                
                package = stablepkgs.gruvbox-plus-icons; 
                name = "Gruvbox-Plus-Dark";
            }; 

            font = {
                package = stablepkgs.nerdfonts; 
                name = "Meslo Nerdfont";
            };

    	};
}
