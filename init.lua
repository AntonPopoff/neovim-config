-- Neovim config start!

-- Map the leader key to "Space"
vim.g.mapleader = ' '

-- Bootstrap "Lazy" plugin manager and plugin configs
require("lazybootstrap")

-- Load Neovim LSP config
require("lsp_config")

-- Load Kanagawa color scheme
-- Default palette is "Dragon"
require("kanagawa").load()

-- Load and configure Neovim Debugger Adapter Protocol
require("dap_config")

-- Load Neovim mappings
require("vim_mappings")

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
