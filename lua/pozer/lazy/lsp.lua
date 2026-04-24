return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()

            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            vim.lsp.config("clangd", {
                capabilities = capabilities,
                cmd = { "clangd", "--clang-tidy" },
            })

            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })

            vim.lsp.enable({
                "lua_ls",
                "clangd",
                "pyright",
            })
        end,
    },
    -- Very special cases, e.g. Java:
    {
        'nvim-java/nvim-java',
        config = function()
            require('java').setup()
            vim.lsp.enable('jdtls')
        end,
    }
}
