{ pkgs }: let 

            imageLink = "https://gruvbox-wallpapers.pages.dev/wallpapers/irl/forest-2.jpg"; 

            image = pkgs.fetchurl {
                url = imageLink;
                sha256 = "0lihk9kc1givn4fl3bhrjwizssplfpqnh826xha9jvzqg45c5b26";
            };

        in pkgs.stdenv.mkDerivation {
            name = "sddm-theme-gruvbox";

            src = pkgs.fetchFromGitHub {
                owner = "MarianArlt";
                repo = "sddm-sugar-dark";
                sha256 = "0153z1kylbhc9d12nxy9vpn0spxgrhgy36wy37pk6ysq7akaqlvy";
                rev = "ceb2c455663429be03ba62d9f898c571650ef7fe";
                
            };
    
            #dontUnpack = true;

            installPhase = ''
                mkdir -p $out
                cp ./* -r $out/

                rm $out/Background.jpg
                cp ${image} $out/Background.jpg
            '';
        }
