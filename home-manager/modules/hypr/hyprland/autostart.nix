{ pkgs, ... }:
let
    image = pkgs.fetchFromGitHub {
        owner = "tluwun";
        repo = "Wallpaper";

        rev = "e42b9162e032369574bb68f39183f91645896675";
        sha256 = "0iaah5qzjqlff7yvfi40kbhmd45na7xpaz5p62bgy1dzvvsdwq8x";
    };

in {
    wayland.windowManager.hyprland.settings = { 
        # Autostart
        exec-once = [
            "waybar"
            "sway-audio-idle-inhibit"
            "wl-paste --type text --watch cliphist store"
            "wl-paste --type image --watch cliphist store"
            "firefox"
            "systemctl --user import-enviroment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            "dbus-update-activation-enviroment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            "swww init && swww img ${image}/Wallpaper1.png"
        ];
    };
}
