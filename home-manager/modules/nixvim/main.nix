{

    programs.nixvim = {
        enable = true;
        
        defaultEditor = true;
        

        colorschemes.gruvbox.enable = true;
        
        opts = {
            number = true;
            relativenumber = true;
            tabstop = 4;
            shiftwidth = 4;
            clipboard = "unnamedplus";
            expandtab = true;
        };
		
    };

    imports = [
        ./autostart.nix
        ./keymaps.nix
        ./plugins/bundle.nix
    ];
}
