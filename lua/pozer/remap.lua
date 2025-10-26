vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Space + ll - compile latex
vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<return>")
