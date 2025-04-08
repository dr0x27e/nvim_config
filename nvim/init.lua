-- init.lua

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Laoding modules:
require("options")
require("floatterm")

-- Load plugins (in lua/plugins.lua)
require("lazy").setup("plugins")

-- Setting color scheme:
vim.cmd.colorscheme("tokyonight")

