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
            guicursor = "n-v-i:block,r:ver25,a:blinkon0-blinkoff0";
        };
		
    };

    imports = [
        ./autostart.nix
        ./keymaps.nix
        ./plugins/bundle.nix
    ];
}
