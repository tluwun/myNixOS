{
    services.hypridle = {
        enable = true;

        settings = {
            listener = [
                {
                    timeout = 600;
                    on-timeout = "hyprlock";
                }
                {
                    timeout = 1200;
                    on-timeout = "systemctl suspend";
                }
                {
                    timeout = 3600;
                    on-timeout = "systemctl poweroff";
                }
            ];
        };
    };
}
