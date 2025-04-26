{ pkgs, ... }: {

    users.users.tluwun = {
        isNormalUser = true;
        hashedPassword = "$6$UNx5E.yvQHrzOjeL$gvslPgNk.T/J0c/48gjcbZwlYCf/S3VcV3.DfrixE0kzEPUK9uNPaZYtpR9tETB6z6gPkUwYz3U.8rXrwADnM1";

        extraGroups = [ "audio" "video" "wheel" "libvirt" ];
        shell = pkgs.fish;
    };
    

}
