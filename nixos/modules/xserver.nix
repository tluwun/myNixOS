{
    services = {
        xserver = {
            enable = true;
            xkb = {
                layout = "us, ua";
                options = "grp:toggle";
            };
            windowManager.bspwm.enable = true;
        };
    };
}
