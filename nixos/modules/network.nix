{
    
    networking = { 
        nameservers = [ "1.1.1.1" "1.0.0.1" "37.235.1.174" "80.67.169.12" ];

        dhcpcd.enable = true;

        wireless = {
            enable = true;
            networks = {
                "UAinet-Home-11671" = {
                    pskRaw = "0894f52da7f732f081ccdb6889a481c1d401829dd9cdb7c9c3b5aa39bd399a37";
                };

                "Icraft 77" = {
                    pskRaw = "de5270b4940ab31506ad9dc2203f75a2a9aedbc6591fcaf7986eb5ad944ecfb4";
                };

                # "" = {
                #   pskRaw = "";
                # };
            };
        };
    };
} 
