{ pkgs, ... }: {

    programs.fish = {
        enable = true;

        plugins = [
            {
                name = "z";

                src = pkgs.fetchFromGitHub {
                    owner = "jethrokuan";
                    repo = "z";
                    rev = "067e867debee59aee231e789fc4631f80fa5788e";
                    sha256 = "058pmqvqx4gngpp1yd0c1n904l456fqdawdawr4bgwddr97a6sbs";
                };
            }
            {
                name = "reload.fish";

                src = pkgs.fetchFromGitHub {
                    owner = "kenji-miyake";
                    repo = "reload.fish";
                    rev = "181ea65bfabc544e0b3b3dd03615900959ce32ca";
                    sha256 = "0cnhaw8pb9pp5rnnibh1aslh0dprvy3s9wys2zmhnhs8ksrg79km";
                };
            }
        ];
        shellAliases = 
        let 
            flakePath = "~/myNixOS/";
        in 
        {
            hms = "home-manager switch --flake ${flakePath}";
            rebuild-switch = "sudo nixos-rebuild switch --flake ${flakePath}";
            rebuild-boot = "sudo nixos-rebuild boot --flake ${flakePath}";
            update-boot = "sudo nixos-rebuild boot --flake ${flakePath} --upgrade";
            update-switch = "sudo nixos-rebuild boot --flake ${flakePath} --upgrade";
            v = "nvim";
            devShell = "nix develop ${flakePath}";
            harakiri = "sudo rm -rf /*";
            uwu = "fastfetch";
        };
        
        shellInit = ''
            set fish_color_error red
            set fish_color_normal white
            set fish_color_command cyan --bold
            set fish_color_quote yellow
            set fish_color_option blue --italics
            set fish_color_end yellow
            set fish_color_autosuggestion a89984
            set fish_color_comment a89984
            set fish_greeting
            set fish_color_param blue --bold --underline

            set prewview_images true
            set prewview_images_method viu

            fastfetch
            fish_vi_key_bindings
        '';
    };
}
