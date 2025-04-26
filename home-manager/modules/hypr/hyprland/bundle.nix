{
    wayland.windowManager.hyprland = {
        enable = true;

        xwayland.enable = true;
    };

    imports = [
        ./binds.nix
        ./autostart.nix
        ./settings.nix
        ./animations.nix
        ./windowRules.nix
        ./vars.nix
        #./plugins.nix
    ];

}
