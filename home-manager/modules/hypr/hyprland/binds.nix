{ config, ... }: {
    wayland.windowManager.hyprland.settings = { 
         
        bind = [
            # Binds for windows 
            "$mainMod, Q, killactive" 
            "$mainMod, P, pseudo"
            "$mainMod, V, togglefloating"
            "$mainMod SHIFT, V, fullscreen"
            "$mainMod, G, togglesplit"
            "$mainMod CTRL, H, resizeactive, -60 0"
            "$mainMod CTRL, L, resizeactive, 60 0"
            "$mainMod CTRL, J, resizeactive, 0 60"
            "$mainMod CTRL, K, resizeactive, 0 -60"
            "$mainMod SHIFT, H, swapwindow, l"
            "$mainMod SHIFT, L, swapwindow, r"
            "$mainMod SHIFT, K, swapwindow, u"
            "$mainMod SHIFT, J, swapwindow, d"
            "$mainMod, H, movefocus, l"
            "$mainMod, L, movefocus, r"
            "$mainMod, K, movefocus, u"
            "$mainMod, J, movefocus, d"

            # Binds for workspaces
            "$mainMod, 1, workspace, 1"
            "$mainMod, 2, workspace, 2"
            "$mainMod, 3, workspace, 3"
            "$mainMod, 4, workspace, 4"
            "$mainMod, 5, workspace, 5"
            "$mainMod, 6, workspace, 6"
            "$mainMod, 7, workspace, 7"
            "$mainMod, 8, workspace, 8"
            "$mainMod, 9, workspace, 9"
            "$mainMod, 0, workspace, 10"
            #"$mainMod CTRL, 1, workspace, 11"
            #"$mainMod CTRL, 2, workspace, 12"
            #"$mainMod CTRL, 3, workspace, 13"
            #"$mainMod CTRL, 4, workspace, 14"
            #"$mainMod CTRL, 5, workspace, 15"
            #"$mainMod CTRL, 6, workspace, 16"
            #"$mainMod CTRL, 7, workspace, 17"
            #"$mainMod CTRL, 8, workspace, 18"
            #"$mainMod CTRL, 9, workspace, 19"
            #"$mainMod CTRL, 0, workspace, 20"
            "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
            "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
            "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
            "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
            "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
            "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
            "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
            "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
            "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
            "$mainMod SHIFT, 0, movetoworkspacesilent, 10"
            "$mainMod, S, togglespecialworkspace, magic"
            "$mainMod SHIFT, S, movetoworkspace, special:magic"

            # Menu binds
            "$mainMod SHIFT, M, exec, rofi -show emoji"
            "$mainMod CTRL, M, exec, rofi -show buffer -modes 'buffer:cliphist-rofi'"
            "$mainMod, M, exec, $menu"
            
            # Binds for execute windows 
            "$mainMod, F, exec, $fileManager"
            "$mainMod, Return, exec, $terminal"

            # Another binds
            "$mainMod SHIFT, W, exec, pkill -SIGUSR2 .waybar-wrapped"
            "$mainMod, W, exec, pkill -SIGUSR1 .waybar-wrapped"
        ];
        # Mouse binds
        bindm = [
            "$mainMod, mouse:272, movewindow"
            "$mainMod, mouse:273, resizewindow"
        ];
         
        bindel = [
            # Setting up a bind volume button
            ", Xf86audioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+ -l 1.0"
            ", Xf86audioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%- -l 1.0"
            ", Xf86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

            # Bind volume button for Source
            "SHIFT, Xf86audioLowerVolume, exec, wpctl set-volume @DEFAULT_SOURCE@ 2%-"
            "SHIFT, Xf86audioRaiseVolume, exec, wpctl set-volume @DEFAULT_SOURCE@ 2%+"
            "SHIFT, Xf86AudioMute, exec, wpctl set-mute @DEFAULT_SOURCE@ toggle"
        ];

        bindl = let 
            ScreenShotDir = "${config.xdg.userDirs.pictures}screenshots/screenshot-$(date | tr ' ' '-').png"; 
        in [
            # Bind(s) for player
            ", XF86AudioPrev, exec, playerctl position 5-"
            ", XF86AudioPlay, exec, playerctl play-pause"
            ", XF86AudioNext, exec, playerctl position 5+"

            # Bind(s) for screenshots
            "$mainMod, X, exec, grim -g \"$(slurp)\" ${ScreenShotDir}"
            ", Print, exec, grim -c ${ScreenShotDir}"
        ];

        binde = [
            # Another binds for workspaces
            "$mainMod, left, workspace, -1"
            "$mainMod, right, workspace, +1"
        ];

    };
}
