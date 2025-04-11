{ pkgs }:
let 
    images = pkgs.fetchFromGitHub {
        owner = "tluwun";
        repo = "Wallpaper";

        sha256 = "12a889fqwq0cl78zcz6jm7k8hzgjib2cjzv29l1x1zn3wikgzg31";
        rev = "99272db660fe7671d6b6073d03488467532751fb";
    };

in pkgs.stdenv.mkDerivation {
    name = "gruvbox-theme-grub";

    src = pkgs.fetchFromGitHub {
        owner = "x4121";

        repo = "grub-gruvbox";

        sha256 = "10ms7ys757gyi4fhg4xkgr19akaakmrvdkim9q8np2z3c73g27j9";
        rev = "e3e8c3325e63ec214bf214891f50388df10649c1";
    };
    
    dontUnpack = true;

    installPhase = ''
        mkdir -p $out
        cp $src/* -r $out/
        rm $out/background.png
        cp -r ${images}/Wallpaper5.png $out/background.png
    '';
}
