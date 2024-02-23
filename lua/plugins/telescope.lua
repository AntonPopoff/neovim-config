return {
    {
        -- Telescope itself
        'nvim-telescope/telescope.nvim',

        dependencies = { 'nvim-lua/plenary.nvim' },
        tag = '0.1.5',

        -- Tweak telescope's default config just a little bit
        config = function()
            local telescope = require("telescope")

            telescope.setup({
                defaults = {
                    -- Truncate files' path to always see a full file name
                    path_display = { 'truncate' },
                    -- Tweak horizontal (default) strategy just a little bit
                    layout_config = {
                        width = 0.85,
                        preview_width = 0.55
                    }
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

