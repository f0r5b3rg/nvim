vim.cmd.colorscheme("tokyonight")

vim.opt.clipboard = 'unnamedplus' -- system clipboard for yank

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers

-- 2 space tab size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false -- soft wrapping

vim.opt.signcolumn = "yes"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "100"

--vimtex stuff
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_latexmk = {
  out_dir = "build",
  options = { "-pdf", "-interaction=nonstopmode", "-synctex=1" }
}
