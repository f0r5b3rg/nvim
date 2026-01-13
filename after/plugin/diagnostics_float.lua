vim.keymap.set("n", "<leader>e", function()
    vim.diagnostic.open_float(nil, {
        focus = false,
        border = "single",  -- square borders
    })
end, { desc = "Show diagnostic in floating window" })
