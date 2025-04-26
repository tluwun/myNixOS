{
    wayland.windowManager.hyprland.settings = {
        # Window Rules
        windowrulev2 = 
        let 
            Alacritty = "class:(Alacritty), title:(Alacritty)";
        in [
            # Rules for Firefox
            "workspace 1, class:(firefox)"
            # Rules for Alacritty
            "float, workspace: 1, ${Alacritty}"
            "size 796 506, workspace: 1, ${Alacritty}" 
            "noborder, class:(Alacritty)" 
            # Rules for subwindows
            "float, class:(org.gnome.FileRoller), title:(File Roller)"
            "size 796 506, class:(org.gnome.FileRoller), title:(File Roller)"
            "float, class:(mpv)"
            "size 709 506, class:(mpv)"
            "float, class:(imv)"
            "size 709 506, class:(imv)"
            # Rules for all windows
            # The other
            "nodim, floating:1, class:(Alacritty), initalTitle:(Alacritty)"
        ];
    };
}
