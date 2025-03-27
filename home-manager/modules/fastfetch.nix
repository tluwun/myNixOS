{
    programs.fastfetch = {
        enable = true;
        settings = {

            logo = {
                source = "~/myNixOS/home-manager/logo";
            };

            display = {
                separator = " 󰑃 ";
                
            };

            modules = [

                {
                    type = "custom";
                    format = "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓";
                }
                
                {
                    type = "os";
                    key = "";
                }

                {
                    type = "shell";
                    key = "";
                }

                {
                    type = "packages";
                    key = "";
                }

                {
                    type = "wm";
                    key = "";
                }

                {
                    type = "kernel";
                    key = "";
                }

                {
                    type = "terminal";    
                    key = "";
                }

                {
                    type = "font";
                    key = "";
                }

                {
                    type = "custom";                                                     
                    format = "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛";
                }  

            ];
        };
    };
}


