{
    programs.nixvim.plugins = {
    
            cmp-nvim-lsp.enable = true;
            cmp-buffer.enable = true;
            cmp-path.enable = true;
            luasnip.enable = true;
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
                                { name = 'luasnip' },
                                { name = 'buffer'},
                            })
                        '';
                    };
                };
            };
    };
}
