{
    services.hypridle = {
        enable = true;

        settings = {
            general = {
                lock_cmd = "pidof || hyprlock";
                before_sleep_cmd = "loginctl lock-session";
                after_sleep_cmd = "hyprctl dispatch dpms on";
            };

            listener = [
                {
                    timeout = 150;
                    on-timeout = "brightnessctl -s set 10";
                    on-resume = "brightnessctl -r";
                }
                {
                    timeout = 300;
                    on-timeout = "hyprlock";
                }
                {

                    timeout = 350;
                    on-timeout = "hyprctl dispatch dpms off";
                    on-resume = "hyprctl dispatch dpms on && brightnessctl -r";
                    
                }
                {
                    timeout = 1200;
                    on-timeout = "systemctl suspend";
                }
            ];
        };
    };
}
