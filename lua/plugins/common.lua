return {
    {
        'tpope/vim-fugitive',
        cmd = { 'Git', 'G' },
    },
    {
        'mbbill/undotree',
        keys = {
            { '<Leader>ut', vim.cmd.UndotreeToggle },
        },
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^4',
        ft = { 'rust' },
    }
}
