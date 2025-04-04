{
    services.swaync = { 
        enable = true;

        settings = {
            positionX = "right";

            positionY = "top";

            layer = "overlay";

            notification-icon-size = 64;

            timeout = 5;

            widgets = [
                "title"
                "notifications"
                "mpris"
            ];

        };
        style = ./style.css;
    };
}
