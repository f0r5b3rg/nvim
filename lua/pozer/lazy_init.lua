-- Configured as specified for single file setup at https://lazy.folke.io/installation.
-- Modified slightly to accomodate setup file structure.

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local out = vim.fn.system({
		"git", 
		"clone", 
		"--filter=blob:none", 
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", 
		lazypath, 
	})
end

vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = "pozer.lazy",
  change_detection = {notify = false}
})
