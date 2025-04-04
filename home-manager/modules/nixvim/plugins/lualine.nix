{
    programs.nixvim.plugins.lualine = {
        enable = true;

        settings = {

            options = {
                globalstatus = true;
                theme = "gruvbox";
            };

            #+--------------------------------+
            #| A | B | C            X | Y | Z |
            #+--------------------------------+

            lualine_a = [ "mode" ];
            lualine_b = [ "branch" ];
            lualine_c = [ "filename" "diff" ];

            lualine_x = [ "encoding" "fileformat" "filetype" ];

        };
    };
}
