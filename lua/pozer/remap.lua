vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Space + ll - compile latex
vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<return>")

-- Space + r - run Rapid for compilation
vim.keymap.set('n', '<leader>r', '<cmd>Rapid<CR>')

-- Space + tm -- open current directory in terminal
--
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

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle diagnostics list" })
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics toggle<cr>", { desc = "Workspace diagnostics" })
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics toggle<cr>", { desc = "Document diagnostics" })
