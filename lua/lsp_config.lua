-- LSP Zero setup

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})

require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = { lsp_zero.default_setup, },
})

-- Setup lua_ls LSP config to disable "vim" global variable warnings
require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())

-- Setup autocompletion mappings
local cmp = require('cmp')

cmp.setup({
    -- Make the first item in completion menu always selected
    preselect = 'item',

    completion = { completeopt = 'menu,menuone,noinsert' },

    mapping = cmp.mapping.preset.insert({
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })
})
