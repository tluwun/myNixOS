{ pkgs }: pkgs.stdenv.mkDerivation rec {

    name = "apple-emoji-linux";
    
    src = pkgs.fetchFromGithub {
        owner = "samuelngs";
        repo = name;

        rev = "7bb5a0437c019529f5e52b9945a51defbdc470c7";
        sha256 = "04qkakbg7lb90zcq3s327fiyjvy4i9np98sninayqvzbsjbk63hb";
    };

    dontUnpack = true;

    installPhase = ''
        mkdir -p $out
        cp $src/* $out/
    '';
}
