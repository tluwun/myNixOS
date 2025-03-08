{ pkgs, ...}: {
    environment.systemPackages = [ (pkgs.writeShellScriptBin "rofi-power-menu" '' 

    entries="󰍃 Logout\n⏾ Suspend\n⭮ Reboot\n⏻ Shutdown\n Lock"

    selected=$(echo -e $entries | rofi -dmenu -locaction 7| awk '{print tolower($2)}')

    case $selected in
        logout)
            hyprctl dispatch exit;;
        suspend)
            exec hyprlock && systemctl suspend;;
        reboot)
            exec systemctl reboot;;
        shutdown)
            exec systemctl poweroff -i;;
        lock)
            exec swaylock;;
    esac                       
        '')
        (pkgs.writeShellScriptBin "waybar-weather" ''
            local=Kovel
            curl -s "wttr.in/$local?format=1"
        '')
        #(pkgs.writeShellScriptBin "notify-volume" ''
             #VOL=$(wpctl get-volume)

             #notify-send -i volume "Volume: $VOL"
        #'')
    ];

}
