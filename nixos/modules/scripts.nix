{ pkgs, ... }: {
    environment.systemPackages = [ 

        (pkgs.writeShellScriptBin "waybar-weather" ''
            local=Kovel
            curl -s "wttr.in/$local?format=1"
        '')
    ];

}
