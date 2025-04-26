{ pkgs, ... }: {
    services.udiskie = {
        enable = true;
        settings = {
            program_option = {
                file_manager = "${pkgs.pcmanfm}/bin/pcmanfm";
            };
        };
    };
}
