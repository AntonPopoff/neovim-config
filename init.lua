-- Neovim config start!

-- Map the leader key to "Space" before doing everything else
vim.g.mapleader = ' '

require("lazybootstrap")
require("telescope_config")
require("treesitter_config")
require("lsp_config")
require("mappings")

-- Some small tweaks
vim.opt.scrolloff = 5
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
