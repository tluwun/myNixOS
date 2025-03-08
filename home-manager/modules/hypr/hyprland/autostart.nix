{ pkgs, ... }:
let 
    imgLink = "https://gruvbox-wallpapers.pages.dev/wallpapers/pixelart/wall_secondary.png";
    image = pkgs.fetchurl {
        url = imgLink;
        sha256 = "0yg47ya928b8l7i7ah9vfh31655si15sjz7lbyjpaz988cypb598";
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
            "systemctl --user import-enviroment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            "dbus-update-activation-enviroment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            "swww init && swww img ${image}"
            "telegram-desktop"
        ];
    };
}
