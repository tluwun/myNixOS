{
    programs.waybar = {
        enable = true;

        style = ./style.css;

        settings = [
            {
                layer = "top";
                height = 52; 

                modules-left = [ "hyprland/workspaces" "tray" ];
                modules-right = [ "battery" "custom/weather"  "pulseaudio" "network" "hyprland/language" "custom/notificationCenter" "custom/powerMenu" ];
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

                "tray" = {
                    icon-size = 21;
                    spacing = 20;
                };

                "hyprland/workspaces" = {
                    
                    format = "{id}:{windows}";

                    window-rewrite = {
                        "title<.*youtube.*>" = "󰗃";
                        "class<firefox>" = "󰈹";
                        "class<org.telegram.desktop>" = "";
                        "class<Alacritty>" = "";
                        "class<mpv>" = " ";
                        "class<pcmanfm>" = " ";
                    };
                };
                "custom/weather" = {
                    exec = "waybar-weather";
                    interval = 100;
                    tooltip = false;
                    
                    max-length = 10;
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
