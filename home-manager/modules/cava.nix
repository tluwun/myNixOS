{ stablepkgs, ... }: {
    programs.cava = {
        enable = true;
        package = stablepkgs.cava;

        settings = {
            input.method = "pipewire";

            colors = {
                background = "#282828";
                foreground = "#ebdbb2";
            };

        };
    };
}
