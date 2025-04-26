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

            smoothing = {
                integral = 120;
                gravity = 80;
            };

        };
    };
}
