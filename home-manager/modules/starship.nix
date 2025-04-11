{

    programs.starship = {
        enable = true;

        # Enable fish Integration 
        enableFishIntegration = true;

        settings = {

            # Format string
            format = ''[](bold white)$hostname@$username $directory $nix_shell$git_branch$git_status $time
 $character'';

            palette = "gruvbox";

            add_newline = false;

            palettes.gruvbox = {

                white = "#ebdbb2";
                gray = "#a89984";
                blue = "#458588";
                green = "#98971a";
                red = "#cc241d";
                yellow = "#d79921";
                purple = "#b16286";
                aqua = "#689d6a";
                black = "#282828";            
                orange = "#d65d0e";

            };
            
            directory = {
                
                style = "italic blue";
                format = "[$path]($style)";
                truncation_length = 20;
            };

            hostname = { 
                format = "[$ssh_symbol](green)[$hostname]($style)";
                style = "aqua";
                ssh_symbol = "󰣀@";
                ssh_only = false;
            };
            username = {
                style_user = "yellow";
                format = "[$user]($style)";
                show_always = true;
            };

            git_branch = {
                format = "[$symbol $branch]($style)";
                style = "yellow";
                symbol = "";
            };
            git_status = {
                format = "[$all_status]($style)";
                style = "yellow";
                up_to_date = "";
                modified = "!";
                deleted = "󰆴";
                untracked = "?";
                staged = "+";
                renamed = "󰑕";
            };


            nix_shell = {
                disabled = false;
                format = " [$symbol]($style)";
                style = "blue";
                symbol = " ";
            };

            character = {
                format = "$symbol ";
                success_symbol = "[s](bold aqua)";
                error_symbol = "[e](bold red)";
                vimcmd_symbol = "[v](bold green)";
                vimcmd_visual_symbol = "[v](bold yellow)";
                vimcmd_replace_symbol = "[R](bold red)";
                vimcmd_replace_one_symbol = "[r](bold blue)";
            };

            time = {
                format = "[$time]($style)";
                style = "bold italic red";
                use_12hr = true;
                disabled = false;
            };

        };
    };

}
