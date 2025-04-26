{ pkgs, ... }: {
    services.mako = {
        enable = true;

        backgroundColor = "#282828";
        textColor = "#ebdbb2";

        height = 500;
        width = 350;

        defaultTimeout = 5000;

        borderRadius = 10;

        sort = "-time";

        layer = "overlay";

        anchor = "top-right";

        icons = true;
        font = "JetBrainsMono Nerd Font 15";
        iconPath = "${pkgs.gruvbox-plus-icons}/share/icons/Gruvbox-Plus-Dark";
    };
}
