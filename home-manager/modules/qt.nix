{ pkgs, ... }:
{
    qt = {
        enable = true;
      
        platformTheme.name = "gtk";

        style = {
            package = pkgs.libsForQt5.qtstyleplugins;
            name = "adwaita-dark";
        };
    };
}
