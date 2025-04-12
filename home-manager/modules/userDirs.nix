{ lib, config, ... }: {
    xdg = {

        enable = true;

        userDirs = lib.mkIf config.custom.desktop-environment {
            enable = true;
            
            createDirectories = true;

            videos = "${config.home.homeDirectory}/Videos";
            pictures = "${config.home.homeDirectory}/Pictures";
            music = "${config.home.homeDirectory}/Music";
            templates = "${config.home.homeDirectory}/Templates";
            publicShare = "${config.home.homeDirectory}/Public";
            documents = "${config.home.homeDirectory}/Documents";
            desktop = "${config.home.homeDirectory}/Desktop";
        };

    };
}
