{

    programs.git = {
        enable = true;
        
        userName = "tluwun";
        userEmail = "shylgacharsen345@gmail.com";
        
        extraConfig = {
            user = {
            };            

            init = {
                defaultBranch = "master";
            };

            credential = {
                helper = "store";
            };

            pull = {
                rebase = true;
                ff = "only";
            };

        };
    };



}
