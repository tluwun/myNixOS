{
    wayland.windowManager.hyprland.settings = {
            
        # Configuration monitor(s)
        monitor = ",preferred,auto,1";
         
        # General settings
        general = {
            gaps_in = 5;
            gaps_out = 20;
            
            # Settings for borders
            "col.active_border" = "rgb(458588) rgb(689d6a) 45deg";
            "col.inactive_border" = "rgb(d79921)";
            border_size = 0;
            resize_on_border = false;
            
            allow_tearing = false;
            
            # Layout windwos
            layout = "dwindle";
        };
         
        # Decoration for window
        decoration = {
            rounding = 10;
            # Chage transparency of focused and unfocused windows
            active_opacity = 1.0;
            #fullscreen_opacity = 0.0;
            inactive_opacity = 1.0;
        
            # Shadows in windows
            shadow = {
                 enabled = true;
                 range = 7;
                 render_power = 3;
                 color = "rgb(1d2021)";
            };
            
            # Blur for windows
            blur = {
                enabled = false;
                size = 6;
                passes = 3;
            };

            dim_inactive = true;
            dim_strength = 0.3;

        };
        
         
        # Settings of layout dwindle and master
        dwindle = {
            pseudotile = true;
            preserve_split = true;
        };    
        master = {
            new_status = "master";
        };
         
        # Misc
        misc = {
            force_default_wallpaper = -1;
            disable_hyprland_logo = false;
            vfr = true;
        };   
        
        # Configuration touchpad and keyboard
        input = {
            kb_layout = "us, ua";
            kb_variant = "";
            kb_model = "";
            kb_options = "grp:toggle";
            kb_rules = "";
            
            follow_mouse = 1;
           
            sensitivity = 0;
         
            touchpad = {
                natural_scroll = false;
            };
        };
         
        # Gesture(s) for touchpad
        gestures = {
           workspace_swipe = true;
           workspace_swipe_invert = false;
           workspace_swipe_forever = true;
        };
        
        device = {
            name = "epic-mouse-v1";
            sensitivity = -0.5;
        };
        cursor = {
            no_warps = true;
        };
    };
}
