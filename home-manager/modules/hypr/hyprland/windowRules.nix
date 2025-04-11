{
    wayland.windowManager.hyprland.settings = {
        # Window Rules
        windowrulev2 = 
        let 
            Alacritty = "class:(Alacritty), title:(Alacritty)";
        in [
            # Pavucontrol
            "size 673 572, title:(Керування гучністю)"
            "float, title:(Керування гучністю)"
            "move 1238 63, title:(Керування гучністю)"
            "plugin:hyprbars:nobar, title:(Керування гучністю)"
            # Calender rules
            "move 564 64, title:(Календар)"
            "size 816 592, title:(Календар)"
            "float, title:(Календар)"
            # Rules for Firefox
            "workspace 1, class:(firefox)"
            # Rules for Alacritty
            "float, workspace: 1, ${Alacritty}"
            "size 796 506, workspace: 1, ${Alacritty}" 
            "noborder, class:(Alacritty)" 
            # Rules for subwindows
            "float, class:(org.gnome.FileRoller), title:(Архіватор файлів)"
            "size 796 506, class:(org.gnome.FileRoller), title:(Архіватор файлів)"
            "float, class:(atril), title:(Atril Document Viewer)"
            "size 709 506, class:(atril), title:(Atril Document Viewer)"
            "float, class:(mpv)"
            "size 709 506, class:(mpv)"
            "float, class:(imv)"
            "size 709 506, class:(imv)"
            "plugin:hyprbars:nobar, class:(obsidian), initalTitle:(Obsidian)"
            # Rules for all windows
            "plugin:hyprbars:nobar, floating: 0"
            # The other
            "float, class:(.blueman-manager-wrapped), title:(Bluetooth Devices)"
            "workspace 3, class:(org.telegram.desktop)"
            "nodim, floating:1, workspace: 2, class:(Alacritty), initalTitle:(Alacritty)"
        ];
    };
}
