{ pkgs, ...}: {
    programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
            nerdcommenter
            nvim-lspconfig
        ];
}
