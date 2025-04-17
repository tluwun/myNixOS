{ pkgs, ... }: {
    environment.systemPackages = [ 

        (pkgs.writeShellScriptBin "waybar-weather" ''
            local=Kovel
            curl -s "wttr.in/$local?format=1"
        '')
        (pkgs.writeShellScriptBin "" ''
            grim -g $(slurp) ~/Pictures/screenshots/screenshot-$(date | tr " " "_")  
        '')
    ];

}
