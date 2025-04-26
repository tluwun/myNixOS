{ config, lib, pkgs, stdenv, ... }:
{
    imports = [ 
        # Include the results of the hardware scan.
        ./hardware-configuration.nix
        ./modules/bundle.nix
    ];

    services.desktopManager.plasma6.enable = false;
  
    programs.nix-ld.enable = true;
    programs.nix-ld.libraries = with pkgs; [
        xorg.libXcursor
        xorg.libXinerama
        xorg.libXext
        xorg.libXrandr
        xorg.libXrender
        xorg.libX11
        xorg.libXi
        libGL
    ];

    programs.nano.enable = false;
    
    networking.hostName = "nixos"; # Set a hostname

    # Set your time zone.
    time.timeZone = "Europe/Kyiv";
    
    # Enable a flakes
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    
    # Set a locale
    i18n.defaultLocale = "en_US.UTF-8";
    
    # Install a zsh
    programs.fish.enable = true;
  
    system.stateVersion = "24.05"; # Did you read the comment?
    boot.kernelModules = [ "kvm_intel" ];
 
  environment = {
    systemPackages = [ 
      (pkgs.writeShellScriptBin "qemu-system-x86_64-uefi" ''
        qemu-system-x86_64 \
          -bios ${pkgs.OVMF.fd}/FV/OVMF.fd \
          "$@"
      '')
    ];
  };

}
