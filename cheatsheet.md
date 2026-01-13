# Neovim C Development Cheat Sheet

A complete reference for your C development workflow in Neovim, including diagnostics, LSP, Trouble.nvim, which-key groups, and compile/run shortcuts.

---

## Diagnostics (clang-tidy + clangd)

### Navigation
- `]d` — Next diagnostic  
- `[d` — Previous diagnostic  

### Floating Window
- `<leader>e` — Show diagnostic in a floating window  

### Code Actions
- `<leader>ca` — Apply code action (clang-tidy fix if available)

---

## Trouble.nvim (Diagnostics Sidebar)

- `<leader>xx` — Toggle diagnostics list  
- `<leader>xw` — Workspace diagnostics  
- `<leader>xd` — Document diagnostics  

---

## LSP Essentials (clangd)

- `K` — Hover documentation  
- `gd` — Go to definition  
- `gD` — Go to declaration  
- `gr` — Find references  
- `gi` — Go to implementation  

---

## Formatting (clang-format)

- Automatic — clang-format runs on save for `.c` and `.h` files  

---

## Compile / Run / Build

All compile-related commands live under `<leader>c`.

- `<leader>cc` — Compile current C file  
- `<leader>cr` — Compile and run current C file  
- `<leader>cb` — Build using Makefile (if present)  

---

## which-key Groups

Press `<leader>` to open the which-key popup.

### Compile Group (`<leader>c`)
- `cc` — Compile current file  
- `cr` — Compile and run  
- `cb` — Build with Makefile  

### Diagnostics Group (`<leader>x`)
- `xx` — Toggle diagnostics list  
- `xw` — Workspace diagnostics  
- `xd` — Document diagnostics  

### LSP Group (`<leader>l`)
- `le` — Show diagnostic float  
- `la` — Code action  
- `ld` — Go to definition  
- `lr` — References  
- `li` — Implementation  
- `lh` — Hover  

---

## Useful Editing Motions

- `ci(` — Change inside parentheses  
- `ci{` — Change inside braces  
- `ci"` — Change inside quotes  
- `dd` — Delete line  
- `yy` — Yank line  
- `p` — Paste  
- `%` — Jump to matching bracket  

---

## Navigation Basics

- `Ctrl-o` — Jump back  
- `Ctrl-i` — Jump forward  
