{

    programs.git = {
        enable = true;
        
        userName = "tluwun";
        userEmail = "shylgacharsen345@gmail.com";
        
        extraConfig = {
            user = {
                signinKey = "z^%QoCyEF@7w#tW9gP~f5U^rKmwHbx";
            };            

            init = {
                defaultBranch = "main";
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
