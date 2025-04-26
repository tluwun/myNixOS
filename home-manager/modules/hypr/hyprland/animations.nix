{
    wayland.windowManager.hyprland.settings = { 
        # Animations
        animations = {
            enabled = true;

            bezier = "myBezier, 0.06, 1.03, 0.43, 1.05";
            
            animation = [
                "windows, 1, 7, myBezier"
                "windowsOut, 1, 7, myBezier, popin 80%"
                "windowsMove, 1, 9, myBezier"
                "border, 1, 10, default"
                "borderangle, 1, 8, myBezier"
                "fade, 1, 7, myBezier"
                "workspaces, 1, 8, myBezier"
            ];
        
        };
    };
}
