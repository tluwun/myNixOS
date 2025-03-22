{
    programs.waybar = {
        enable = true;

        settings = [
        {
                layer = "top";
                height = 52;
                modules-left = [ "custom/mainMenu" "hyprland/workspaces" "tray" ];
                modules-right = [ "battery" "pulseaudio" "custom/weather" "network" "hyprland/language" "custom/notificationCenter" "custom/powerMenu" ];
                modules-center = [ "clock" ];
                
                "battery" = {
                    format = "{capacity}% {icon}";

                    format-icons = [ "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];

                    format-charging = "{capacity}% 󰚥{icon}";

                    interval = 1;
                    states = {
                        warning = 20;
                        critical = 10;
                    };
                };
                "clock" = {
                    format = "{:%a, %d. %b, %I:%M %p}";
                    on-click = "gnome-calendar";
                    locale = "uk_UA.UTF-8";
                    tooltip = false;
                };
                "hyprland/submap" = {
                    format = "{}";
                };
                "hyprland/language" = {
                    format = "[{}]";
                    format-uk = "UA";
                    format-en = "US";
                };
                "network" = {
                    format = "{essid} {icon}";
                    format-alt = "{essid} {icon}";
                    format-icons = [ "󰤯" "󰤟" "󰤢" "󰤥" "󰤨" ];
                    format-disconnect = "󰤭";

                    tooltip = false;
                };
                "pulseaudio" = {
                    format = "{volume}% {icon} {format_source}";
                    format-source = "{volume}% 󰍬";

                    format-source-muted = "󰍭";
                    format-muted = "  {format_source}";

                    format-bluetooth-muted = " 󰂯 {format_source}";
                    format-bluetooth = "{volume}% {icon}󰂯 {format_source}";

                    format-icons = { 

                        default = [ " " " " " " ];
                        headphone = " ";
                        car = " ";
                        phone = "󰏲";
                        hdmi = "󰡁";
                        hands-free = " ";
                        headset = " ";
                    };

                    on-click = "pavucontrol";
                    scroll-step = 2.0;
                    max-volume = 100;
                };
                "custom/powerMenu" = {
                    format = "⏻";
                    tooltip = false;
                    on-click = "rofi-power-menu";
                };
                "custom/mainMenu" = {
                    format = "  ";
                    on-click = "wofi --show drun -l top_left --width 410 --height 450";
                    tooltip = false;
                };
                "tray" = {
                    icon-size = 21;
                    spacing = 20;
                };
                "hyprland/workspaces" = {
                    #format = "{icon}";
                    
                    format = "{id}";

                    format-icons = {
                        default = "  ";
                        active = "  ";
                    };
                    window-rewrite = {
                        "title<.*youtube.*>" = "󰗃";
                        "class<firefox>" = "󰈹";
                        "class<org.telegram.desktop>" = "";
                    };
                };
                "custom/weather" = {
                    exec = "waybar-weather";
                    interval = 100;
                    tooltip = false;
                };
                "custom/notificationCenter" = {
                    format = "";
                    on-click = "swaync-client -t -sw";
                    tooltip = false;
                };
                "bluetooth" = {
                    format = "󰂯"; 
                    format-connected = "󰂱";
                    on-click = "blueman-manager";
                    format-disabled = "󰂲";
                };
        }
        ];
    };
}
