{ stablepkgs, ... }: {
    programs.cava = {
        enable = true;
        package = stablepkgs.cava;

        settings = {
            general = {
                mode = "waves";
            };
            input = {
                method = "pipewire";
                source = "auto";
            };
            colors = {
                background = "#282828";
                foreground = "#ebdbb2";
            };

            smoothing = {
                integral = 120;
                gravity = 80;
            };

        };
    };
}
