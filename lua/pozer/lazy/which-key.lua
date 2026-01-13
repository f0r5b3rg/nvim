return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            plugins = {
                marks = true,
                registers = true,
            },
            win = {
                border = "single",   -- replaces deprecated window.border
            },
            layout = {
                align = "center",
            },
        },
    },
}
