{ pkgs, ... }: {
    programs.firefox = {
        enable = true;

        profiles.arsen = {
            extentions = with pkgs.nur.repos.rycee.firefox-addons; [
                surfingkeys
                privacy-badger
                ublock-origin
                youtube-shorts-block
                return-youtube-dislikes
                bitwarden
            ];
        };
    };
}
