{ inputs, ... }: {
	imports = [
            ./cursor.nix
            ./git.nix
            ./hypr/bundle.nix
            ./nixvim.nix
            ./gtk.nix 
            ./rofi.nix
            ./starship.nix
            ./fish.nix
            ./alacritty.nix
            ./cava.nix
            ./btop.nix
            ./firefox.nix
            ./waybar/bundle.nix
            ./fastfetch.nix
            ./swaync/bundle.nix
            ./qt.nix
            ./mpv.nix
            ./packages.nix
            ./ags.nix
            ./udiskie.nix
            inputs.ags.homeManagerModules.default
    ];
}
