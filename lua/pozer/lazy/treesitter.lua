return {
    'nvim-treesitter/nvim-treesitter',
    branch = "main",
    lazy = false,
    build = ':TSUpdate',

    config = function()
        -- contains langs to install and highlight
        local langs = { "python", "java", "c" }

        require('nvim-treesitter').install(langs)
        require('nvim-treesitter').setup {
            highlight = { enable = true },
        }

        vim.api.nvim_create_autocmd('FileType', {
            pattern = langs,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
