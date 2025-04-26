{ pkgs, ... }: {
    wayland.windowManager.hyprland = {

        settings = {
        
            # Hyprland plugins configuration
            plugin = {
                # Plugin for bar 
                hyprbars = {
                    bar_color = "rgb(3c3836)";
                    bar_height = 30;
                    
                    # Buttons for bar
                    hyprbars-button = [
                        "rgb(cc241d), 15, ,hyprctl dispatch killactive"
                        "rgb(d79921), 15, ,hyprctl dispatch fullscreen 1"
                        "rgb(98971a), 15, ,hyprctl dispatch movetoworkspacesilent special:magic"
                    ];
                    "col.text" = "rgb(ebdbb2)";
                    bar_blur = false;

                    bar_buttons_alignment = "left";
                };
            };
        };

        # Hyprland plugins installation
        plugins = with pkgs.hyprlandPlugins; [
            hyprbars
        ];

    };
}
