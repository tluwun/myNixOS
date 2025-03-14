{
    wayland.windowManager.hyprland.settings = {
        # Window Rules
        windowrule = [
            "workspace 1, ^(firefox)"
        ];
        windowrulev2 = [
            # Pavucontrol
            "size 673 572, title:(Керування гучністю)"
            "float, title:(Керування гучністю)"
            "move 1238 63, title:(Керування гучністю)"
            "plugin:hyprbars:nobar, title:(Керування гучністю)"
            # Календар
            "move 564 64, title:(Календар)"
            "size 816 592, title:(Календар)"
            "float, title:(Календар)"
            # Правила для Firefox
            "plugin:hyprbars:nobar, class:(firefox)"
            #"tile, class:(firefox)"
            # Правила для Терміналу
            "float, workspace: 1, class:(Alacritty), title:(Alacritty)"
            "size 796 506, workspace: 1, class:(Alacritty), title:(Alacritty)"
            "noborder on, class:(Alacritty), initalTitle:(Alacritty)"
            # Правила для споміжних програм
            "float, class:(org.gnome.FileRoller), title:(Архіватор файлів)"
            "size 796 506, class:(org.gnome.FileRoller), title:(Архіватор файлів)"
            "float, class:(ristretto), title:(Переглядач зображень)"
            "size 796 506, class:(ristretto), title:(Переглядач зображень)"
            "float, class:(atril), title:(Atril Document Viewer)"
            "size 709 506, class:(atril), title:(Atril Document Viewer)"
            "float, class:(mpv)"
            "size 709 506, class:(mpv)"
            "plugin:hyprbars:nobar, class:(obsidian), initalTitle:(Obsidian)"
            # Правила для усіх вікон
            "plugin:hyprbars:nobar, floating: 0"
            # Інші Правила
            "float, class:(.blueman-manager-wrapped), title:(Bluetooth Devices)"
            "workspace 3,class:(org.telegram.desktop)"
            "workspace 4, class:(org.keepassxc.KeePassXC)"
        ];
    };
}
