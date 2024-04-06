return {
    {
        'nvim-telescope/telescope.nvim',

        dependencies = { 'nvim-lua/plenary.nvim' },
        tag = '0.1.5',

        config = function()
            -- Tweak some telescope options
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

            -- Add some telescope mappings
            local telescope_builtin = require('telescope.builtin')
            vim.keymap.set('n', '<Leader>pf', telescope_builtin.find_files, {}) -- Search project files
            vim.keymap.set('n', '<Leader>pg', telescope_builtin.live_grep, {})  -- Rip grep project files
            vim.keymap.set('n', '<Leader>pb', telescope_builtin.buffers, {})    -- Search project buffers
            vim.keymap.set('n', '<Leader>pm', telescope_builtin.marks, {})      -- Search project marks
            vim.keymap.set('n', '<Leader>pr', telescope_builtin.registers, {})  -- Search registers content
            vim.keymap.set('n', '<Leader>ph', telescope_builtin.help_tags, {})  -- Search help tags
        end,
    },
    {
        -- Telescope extension to make fzf even faster
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    }
}
