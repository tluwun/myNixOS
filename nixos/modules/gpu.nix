{ pkgs, ... }: {
    hardware.graphics = {
        enable = true;
        extraPackages = with pkgs; [
            intel-media-driver
            vaapiIntel
            intel-media-sdk
        ];
    };
}
