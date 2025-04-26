{ pkgs }: 
let 


    image = pkgs.fetchFromGitHub {
        owner = "tluwun";
        repo = "Wallpaper";

        rev = "99272db660fe7671d6b6073d03488467532751fb";
        sha256 = "12a889fqwq0cl78zcz6jm7k8hzgjib2cjzv29l1x1zn3wikgzg31";
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
            cp ${image}/Wallpaper6.jpg $out/Background.jpg
        '';
}
