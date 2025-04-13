{
    wayland.windowManager.hyprland.settings = { 
        "$mainMod" = "SUPER";
        "$terminal" = "alacritty";
        "$menu" = "rofi -show drun";
        "$fileManager" = "nemo";

        env = [
            "QT_QPA_PLATFORM, wayland"
            "QT_WAYLAND_DISABLE_WINDOWDECORATION, 1"
            "QT_QPA_GENERETIC_PLUGINS, wayland"
        ];
    };
}
