vim.opt.number = true
vim.opt.relativenumber = true

vim.optsplitbelow = true
vim.optsplitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.g.mapleader = " "

-- Keymaps:
vim.keymap.set("n", "h", vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set("n", "<leader><CR>", "m`O<Esc>``", { desc = "Insert empty line above without moving cursor" })
