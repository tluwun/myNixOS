{ pkgs, ... }: {

    programs.alacritty = {
        enable = true;

        settings = {
            window = { 
                opacity = 0.3;
                decorations = "None";
            };
            colors = {
                primary = {
                    background = "#282828";
                    foreground = "#ebdbb2";
                };
                normal = {
                    red = "#cc241d";
                    green = "#98971a";
                    black = "#1d2021";
                    yellow = "#d79921";
                    blue = "#458588";
                    magenta = "#b16286";
                    cyan = "#689d6a";
                    white = "#bdae93";
                };
                bright = {
                    black = "#1d2021";
                    red = "#fb4934";
                    green = "#b8bb26";
                    yellow = "#fabd2f";
                    blue = "#83a598";
                    magenta = "#d3869b";
                    cyan = "#8ec07c";
                    white = "#d5c4a1";
                };
                transparent_background_colors = true;
            };
            cursor = {
                style = {
                    shape = "Block";
                    blinking = "always";
                };
            };
            terminal = {
                shell = {
                    program = "${pkgs.fish}/bin/fish";
                };
            };
            font = {
                size = 12.5;
            };
        };

    };
}
