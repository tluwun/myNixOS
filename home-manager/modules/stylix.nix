{ pkgs, ... }: {

    stylix = { 
        enable = true;
        base16Scheme = "gruvbox-dark-soft";
      
        cursor = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Classic";

            size = 24;
        };
        fonts = {
            package = import ./apple-emoji.nix { inherit pkgs; };
            name = "";
        };
    };
}
