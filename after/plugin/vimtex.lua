vim.g.vimtex_compiler_method = "latexmk"

vim.g.vimtex_compiler_latexmk = {
  options = {
    "-pdf",
    "-interaction=nonstopmode",
    "-synctex=1",
  },
}
