{ pkgs, ... }: {

    programs.nixvim = {
        enable = true;
        
        defaultEditor = true;
        
        plugins = {
            cmp-nvim-lsp.enable = true;
            cmp-buffer.enable = true;
            cmp-path.enable = true;
            cmp-zsh.enable = true;
            cmp-cmdline.enable = true;
            cmp = {
                autoEnableSources = false; 
                enable = true;
                settings = {

                    mapping = {
                        __raw = ''
                            cmp.mapping.preset.insert({
                                ['<C-j>'] = cmp.mapping.scroll_docs(-4),
                                ['<C-k>'] = cmp.mapping.scroll_docs(4),
                                ['<Alt>'] = cmp.mapping.complete(),
                                ['<ESC>'] = cmp.mapping.abort(),
                                ['<ENTER>'] = cmp.mapping.confirm({ select = true }), 
                            })
                        '';
                        
                        
                    };

                    snippet = {
                        expand = "function(args) require('luasnip').lsp_expand(args.body) end";
                    };
                    
                    sources = {
                    
                        __raw = ''  
                            cmp.config.sources({
                                { name = 'nvim_lsp' },
                                { name = 'vship' },
                                { name = 'buffer'},
                            })
                        '';
                    };
                };
            };
            airline.enable = true;
            lsp = {
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
                    nixd = {
                        enable = true;
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
                };
            };
            web-devicons.enable = true;
            multicursors.enable = true;
            #copilot-cmp.enable = true;
            #copilot-chat.enable = true;
            #copilot-lua.suggestion.enabled = false;
            #copilot-lua.panel.enabled = false;
            neogit.enable = true;
        };

        extraPlugins = with pkgs.vimPlugins; [
            nerdtree
            nerdcommenter
            gruvbox
            nvim-lspconfig
            vim-devicons
        ];
        colorscheme = "gruvbox";
        
        opts = {
            number = true;
            relativenumber = true;
            tabstop = 4;
            shiftwidth = 4;
            clipboard = "unnamedplus";
            expandtab = true;
        };
        keymaps = [
            {
                action = "<cmd>NERDTreeToggle<CR>";
                key = "<leader>n";
            }
        ];
		
    };
}
