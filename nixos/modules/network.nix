{
    
    networking = { 
        nameservers = [ "1.1.1.1" "1.0.0.1" "37.235.1.174" "80.67.169.12" ];

        networkmanager.enable = true;
        networkmanager.dhcp = "dhcpcd";
    };
} 
