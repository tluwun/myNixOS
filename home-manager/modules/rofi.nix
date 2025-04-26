{ pkgs, config, ... }: {
    programs.rofi = {
        enable = true;

        extraConfig = {

            modes = "drun,run,emoji,calc";

            show-icons = true;

            display-drun = "App";
            display-run = "run";
            display-calc = "calc";
            display-emoji = "😀";

            icons-theme = "Gruvbox-Plus-Dark";

            font = "JetBrainsMono Nerd Font 12";

        };

        plugins = with pkgs; [ rofi-emoji-wayland rofi-calc rofi-bluetooth ];

        terminal = "${pkgs.alacritty}/bin/alacritty";
        
        theme = "${config.home.homeDirectory}myNixOS/home-manager/theme.rasi";
    };
}
