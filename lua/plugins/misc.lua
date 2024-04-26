return {
    {
        'tpope/vim-fugitive',
        cmd = { 'Git', 'G' },
    },
    {
        'mbbill/undotree',
        keys = {
            { '<Leader>ut', vim.cmd.UndotreeToggle, mode = 'n' },
        },
    },
}
