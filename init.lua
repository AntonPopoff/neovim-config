-- Neovim config start!

vim.g.mapleader = ' '

require("lazybootstrap")
require("lsp_config")
require("kanagawa").load()
require('dap_codelldb')
require("vim_mappings")
require('vim_config')
