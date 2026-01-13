vim.diagnostic.config({
    virtual_text = {
        prefix = "●",  -- symbol in front of inline messages
        spacing = 2,   -- space between text and code
    },
    signs = true,       -- show signs in the sign column
    underline = true,   -- underline problematic code
    update_in_insert = false, -- don’t spam diagnostics while typing
    severity_sort = true,     -- errors before warnings, etc.
})
