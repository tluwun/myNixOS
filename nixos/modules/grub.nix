{ pkgs, ... }: 
{
    boot.loader = {
        grub = {
            enable = true;
            efiSupport = true;
            useOSProber = true;

            device = "nodev";

            theme = let 
                imageLink = "https://gruvbox-wallpapers.pages.dev/wallpapers/minimalistic/zelda_botw.png";
                image = pkgs.fetchurl {
                    url = imageLink;
                    sha256 = "0rjhhbqwzs7h2v82xfs2kfzd07rxmkgp08hmdmx3h54dfh71ich4";
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
                    cp -r ${image} $out/background.png
                '';
            };
        };
        efi.canTouchEfiVariables = true;
    };

}
