{ pkgs, ... }: {
    programs.mpv = {
        enable = true;

        config = {
            profile = "fast";
            hwdec = "vaapi";
            vo = "gpu";
        };
        scripts = with pkgs.mpvScripts; [ encode acompressor ];
    };
}
