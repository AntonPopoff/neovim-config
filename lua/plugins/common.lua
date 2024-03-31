return {
    -- Git Plugin
    'tpope/vim-fugitive',

    -- Undotree plugin and mappings
    {
        'mbbill/undotree',
        keys = {
            { '<Leader>ut', vim.cmd.UndotreeToggle },
        },
    },
}

