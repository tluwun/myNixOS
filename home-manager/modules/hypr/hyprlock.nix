{ pkgs, ... }: {
    programs.hyprlock = 
      let 
        fontSize = 30; 
        fontColor = "rgb(ebdbb2)";
        fontFamily = "JetBrainsMono Nerd Font";

        image = pkgs.fetchFromGitHub {
                owner = "tluwun";
                repo = "Wallpaper";

                rev = "99272db660fe7671d6b6073d03488467532751fb";
                sha256 = "12a889fqwq0cl78zcz6jm7k8hzgjib2cjzv29l1x1zn3wikgzg31";
        };


      in {
        enable = true;
        settings = {

            background = {
                path = "${image}/Wallpaper2.jpg";

                blur_passes = 2;

                color = "rgb(282828)";
            };

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
                    font_family = fontFamily;
                    
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
                    font_family = fontFamily;

                    halign = "left";
                    valign = "bottom";
                }

            ];
        };
    
    };
}
