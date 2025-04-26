{ config, ... }: {
    xdg = {

        enable = true;

        userDirs = {
            enable = true;
            
            createDirectories = true;

            videos = "${config.home.homeDirectory}Videos";
            pictures = "${config.home.homeDirectory}Pictures";
            music = "${config.home.homeDirectory}Music";
            templates = "${config.home.homeDirectory}Templates";
            publicShare = "${config.home.homeDirectory}Public";
            documents = "${config.home.homeDirectory}Documents";
            desktop = "${config.home.homeDirectory}Desktop";
            download = "${config.home.homeDirectory}Downloads";
        };

    };
}
