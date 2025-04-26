{ stablepkgs, ... }: {
    environment.systemPackages = with stablepkgs; [
        cava
    ];
}
