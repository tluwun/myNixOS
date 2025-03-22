{ pkgs, ... }: {
    services.swaync.settings = {
        positionX = "right";

        positionY = "top";

        layer = "overlay";

        notification-icon-size = 64;

        widgets = [
            "title"
            "notifications"
            "mpris"
        ];
    };
}
