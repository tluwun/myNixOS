{ pkgs, ... }:
{ 
    environment.systemPackages = with pkgs; [
            hyprlock
            transmission_4-gtk
            swww
            waybar
            alacritty
            rofi-wayland
            mpv
            firefox
            file-roller
            home-manager
            nemo 
            git
            libnotify
            swaynotificationcenter
            fastfetch 
            hypridle 
            python3 
            gnumake 
            qemu 
            telegram-desktop
            qemu_kvm
            OVMFFull
            mate.atril
            cbonsai
            sway-audio-idle-inhibit
            cmatrix
            btop
            youtube-music
            grim
            slurp
            ranger
            rofi-emoji-wayland
            cliphist
            wl-clipboard
            pavucontrol
            gnome-calendar
            keepassxc
            pipes
            wineWowPackages.unstable
            wineWowPackages.waylandFull
            playerctl
            libstatgrab
            libsForQt5.qt5.qtgraphicaleffects
            ags
            intel-media-driver
            wev
            figlet            
            intel-vaapi-driver
            nix-prefetch-git
            xfce.tumbler
            tty-clock
            obsidian
            obs-studio
            imv
        ];
}
