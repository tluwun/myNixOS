{
    programs.nixvim.plugins.lsp = {
        enable = true;
        servers = {
            clangd = { 
                enable = true;
                autostart = true;
            };
            cmake = { 
                enable = true;
                autostart = true;
            };
            java_language_server = {
                enable = true;
                autostart = true;
            };
            cssls = {
                enable = true;
            };
            html = {
                enable = true;
            };
            golangci_lint_ls = {
                enable = true;
            };
            nixd = {
                enable = true;
            };
            ts_ls = {
                enable = true;
            };
        };
    };
}
