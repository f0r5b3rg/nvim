vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Space + ll - compile latex
vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<return>")

-- Space + cc - compile C
vim.keymap.set("n", "<leader>cc", function()
    local file = vim.fn.expand("%")
    local output = vim.fn.expand("%:r")
    local cmd = string.format("gcc -Wall -Wextra -std=c17 %s -o %s", file, output)
    vim.cmd("make! " .. cmd)
end, { desc = "Compile current C file" })

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
