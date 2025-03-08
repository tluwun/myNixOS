{ pkgs, ... }: {
    programs.rofi = {
        enable = true;

        extraConfig = {

            modi = "drun,run,emoji,calc";

            show-icons = true;

            display-drun = "app";
            display-run = "run";
            display-calc = "calc";
            display-emoji = "😀";


        };

        plugins = with pkgs; [ rofi-emoji-wayland rofi-calc rofi-bluetooth ];

        terminal = "${pkgs.alacritty}/bin/alacritty";
        
        theme = "~/myNixOS/home-manager/theme.rasi";
    };
}
