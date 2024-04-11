return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local telescope = require("telescope")
            telescope.setup({
                defaults = {
                    layout_strategy = 'horizontal',
                    path_display = { 'truncate' },
                    layout_config = {
                        horizontal = {
                            width = 0.85,
                            preview_width = 0.55
                        },
                    },
                },
            })
            -- Load C Fzf extension to make telescope even faster
            telescope.load_extension("fzf")
        end,
        keys = {
            { '<Leader>pf', '<cmd>Telescope find_files<cr>', mode = 'n' },
            { '<Leader>pg', '<cmd>Telescope live_grep<cr>',  mode = 'n' },
            { '<Leader>pb', '<cmd>Telescope buffers<cr>',    mode = 'n' },
            { '<Leader>pm', '<cmd>Telescope marks<cr>',      mode = 'n' },
            { '<Leader>pr', '<cmd>Telescope registers<cr>',  mode = 'n' },
            { '<Leader>ph', '<cmd>Telescope help_tags<cr>',  mode = 'n' },
        }
    },
    {
        -- Telescope extension to make fzf even faster
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        lazy = true,
    }
}
