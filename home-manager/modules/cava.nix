{ stablepkgs, ... }: {
    programs.cava = {
        enable = true;
        package = stablepkgs.cava;

        settings = {
            general = {
                mode = "scientific";
            };
            input = {
                method = "pipewire";
                source = "auto";
            };
            color = {
                background = "#282828";
                foreground = "#ebdbb2";
                gradient = 1;
            };

            smoothing = {
                integral = 120;
                gravity = 80;
            };

        };
    };
}
