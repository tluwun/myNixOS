{ pkgs, ... }:
let
    image = pkgs.fetchFromGitHub {
        owner = "tluwun";
        repo = "Wallpaper";

        rev = "99272db660fe7671d6b6073d03488467532751fb";
        sha256 = "12a889fqwq0cl78zcz6jm7k8hzgjib2cjzv29l1x1zn3wikgzg31";
    };

in {
    wayland.windowManager.hyprland.settings = { 
        # Autostart
        exec-once = [
            "waybar"
            "sway-audio-idle-inhibit"
            "wl-paste --type text --watch cliphist store"
            "wl-paste --type image --watch cliphist store"
            "blueman-applet"
            "firefox"
            "keepassxc"
            "systemctl --user import-enviroment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            "dbus-update-activation-enviroment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            "swww init && swww img ${image}/Wallpaper1.png"
            "telegram-desktop"
        ];
    };
}
