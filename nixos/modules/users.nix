{ pkgs, ... }: {

    users.users.tluwun = {
        isNormalUser = true;
        hashedPassword = "$6$x4tXHuZttneUNN1w$SiptKXkkAH1jof9AZz4rsPcQmTCogulgeO6aouMBUBH9w.MSnAvF.jEyTk3VW4CIGm59gFQLyxFDDFERUTmgb0";

        extraGroups = [ "audio" "video" "wheel" "libvirt" ];
        shell = pkgs.fish;
    };
    

}
