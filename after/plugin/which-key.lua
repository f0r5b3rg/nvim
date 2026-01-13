local wk = require("which-key")

wk.add({
    { "<leader>x",  group = "diagnostics" },
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",          desc = "Toggle diagnostics" },
    { "<leader>xw", "<cmd>Trouble workspace_diagnostics toggle<cr>", desc = "Workspace diagnostics" },
    { "<leader>xd", "<cmd>Trouble document_diagnostics toggle<cr>",  desc = "Document diagnostics" },

    { "<leader>l",  group = "LSP" },
    { "<leader>le", function() vim.diagnostic.open_float() end,     desc = "Show diagnostic" },
    { "<leader>la", function() vim.lsp.buf.code_action() end,       desc = "Code action" },
    { "<leader>ld", function() vim.lsp.buf.definition() end,        desc = "Go to definition" },
    { "<leader>lr", function() vim.lsp.buf.references() end,        desc = "References" },
    { "<leader>li", function() vim.lsp.buf.implementation() end,    desc = "Implementation" },
    { "<leader>lh", function() vim.lsp.buf.hover() end,             desc = "Hover" },
})
