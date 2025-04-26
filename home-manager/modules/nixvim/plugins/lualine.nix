{
    programs.nixvim.plugins.lualine = {
        enable = true;

        settings = {

            options = {
                icons_enabled = true;
                globalstatus = true;
                theme = "gruvbox";
                section_separators = {
                    right = "";
                    left = "";
                };
                component_separators = {
                    right = "";
                    left = "";
                };
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
