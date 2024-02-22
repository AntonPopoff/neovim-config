return {
    {
        -- Telescope itself
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        tag = '0.1.5',
    },
    {
        -- Telescope extension to make fzf even faster
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    }
}

