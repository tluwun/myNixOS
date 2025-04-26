{ pkgs, ... }: {
    environment.variables = {
    XDG_SESSION_TYPE = "wayland";
    MOZ_ENABLE_WAYLAND = 1;
    QT_QPA_PLATFORM = "wayland";
    SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
    SSL_CERT_DIR = "${pkgs.cacert}/etc/ssl/certs/";
  };
} 
