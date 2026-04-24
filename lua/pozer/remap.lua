vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Space + ll - compile latex
vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<return>")

-- Diagnostics
vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({ count = 1 })
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({ count = -1 })
end, { desc = "Previous diagnostic" })

-- clangd-tidy autofixes
vim.keymap.set("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
end, { desc = "Code action (clang-tidy fix)" })
