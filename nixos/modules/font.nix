{ pkgs, ... }: {
    fonts = { 
        packages = with pkgs.nerd-fonts; [ jetbrains-mono meslo-lg ]; 
        fontDir.enable = true;
        
    };
}
