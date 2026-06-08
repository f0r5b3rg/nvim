return {
    'stevearc/conform.nvim',
    opts = {},

    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "prettier" },
                python = { "black" },
                c = { "prettier" },
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_format = "fallback",
            },
        })
        vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function(args)
                require("conform").format({ bufnr = args.buf })
            end,
        })
    end,
}
