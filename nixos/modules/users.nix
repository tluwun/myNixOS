{ pkgs, ... }: {

    users.users.tluwun = {
        isNormalUser = true;
        extraGroups = [ "audio" "video" "networkmanager" "wheel" "libvirt" ];
        shell = pkgs.fish;
        password = "333672=Fedora";
    };
    

}
