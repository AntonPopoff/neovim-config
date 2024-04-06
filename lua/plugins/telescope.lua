return {
    {
        'nvim-telescope/telescope.nvim',

        dependencies = { 'nvim-lua/plenary.nvim' },
        tag = '0.1.5',

        config = function()
            local telescope = require("telescope")

            telescope.setup({
                defaults = {
                    layout_strategy = 'horizontal',
                    -- Truncate a file's path to always see a full name
                    path_display = { 'truncate' },
                    -- Tweak horizontal layout just a little bit
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
    },
    {
        -- Telescope extension to make fzf even faster
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    }
}
