{
    programs.virt-manager.enable = true;
    virtualisation.libvirtd.enable = true;
    users.groups.libvirtd.members = [ "arsen" ];
    virtualisation.spiceUSBRedirection.enable = true;

}
