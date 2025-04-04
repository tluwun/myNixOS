{ pkgs, ... }: {
    home.packages = with pkgs; [
        libresprite
        mov-cli
    ];
}
