{
    wayland.windowManager.hyprland.settings = { 
        "$mainMod" = "SUPER";
        "$terminal" = "alacritty";
        "$menu" = "rofi -show drun";
        "$fileManager" = "nemo";

        env = [
            "QT_QPA_PLATFORM, wayland"
        ];
    };
}
