{ pkgs, ... }: {
    programs.hyprlock = 
    let 
        fontSize = 30; 
        fontColor = "rgb(ebdbb2)";

        imgLink = "https://gruvbox-wallpapers.pages.dev/wallpapers/minimalistic/gruvbox_astro.jpg";


        image = pkgs.fetchurl {
            url = imgLink;
            sha256 = "0kfm6g3h5rmlbz0dba18avzpvy3wlxbrp31s8f3902ysxcip4g31";
        };
    in {
        enable = true;
        settings = {
            background = {
                path = "${image}";
                blur_passes = 2;
                color = "rgb(282828)";
            };
            #shape = [
                #{
                    #size = "250, 100";
                    #color = "rgb(282828)";
                    #rounding = 3;
                    #border_size = 0;
                    #rotate = 1;
                    #xray = false;
                    #position = "0, 80";
                    #halign = "center";
                    #valign = "center";
                #}
                #{
                    #size = "250, 50";
                    #color = "rgb(282828)";
                    #rounding = 3;
                    #position = "0, 0";
                    #halign = "left";
                    #valign = "bottom";
                #}
            #];
            input-field = {
                size = "200, 50";
                outline_thickness = 3;
                dots_size = 0.33;
                dots_spacing = 0.15;
                dots_center = false;
                dots_routing = -1;
                outer_color = "rgb(fe8019)";
                inner_color = "rgb(282828)";
                font_color = fontColor;
                fade_on_emty = true;
                fade_timeout = 1000;
                placeholder_text = "<i>Input Password</i>";
                hide-input = false;
                rounding = 1.0;
                check_color = "rgb(282828)";
                fail_color = "rgb(cc241d)";
                fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
                fail_timeout = 2000;
                fail_transiton = 300;
                capslock_color = "rgb(a89984)";
                numlock_color = -1;
                bothlock_color = -1;
                invert_numlock = false;
                swap_font_color = false;
                position = "0, -20";
                halign = "center";
                valign = "center";  
            };
            label = [ 
                {
                    text = "  $TIME12";
                    text_align = "center";
                    color = fontColor;
                    font_size = fontSize;
                    font_family = "Meslo Nerdfont";
                    rotate = 0;
                    position = "0, 80";
                    halign = "center";
                    valign = "center";
                }
                {
                    text = "$LAYOUT";
                    text_align = "center";
                    color = "rgb(ebdbb2)";
                    font_size = fontSize;
                    font_family = "Meslo Nerdfont";
                    halign = "left";
                    valign = "bottom";
                }
            ];
        };
    
    };


}
