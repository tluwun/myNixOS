{
    
    networking = { 
        nameservers = [ "1.1.1.1" "1.0.0.1" "37.235.1.174" "80.67.169.12" ];

        dhcpcd.enable = true;

        wireless.iwd = {
            enable = true;
            settings = { 

                Network = {
                    EnableIPv6 = true;
                }; 

                Settings = {
                    AutoConnect = true;
                }; 

            };
        };
    };
} 
