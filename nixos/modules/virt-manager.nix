{
    programs.virt-manager.enable = true;
    virtualisation.libvirtd.enable = true;
    users.groups.libvirtd.members = [ "tluwun" ];
    virtualisation.spiceUSBRedirection.enable = true;

}
