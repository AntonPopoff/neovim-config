-- Telescope config start

local telescope = require('telescope')

-- Tweak some telescope default settings 
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

-- Enable fzf extension to make telescope even faster
telescope.load_extension('fzf')

-- Telescope key bindings
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>pf', telescope_builtin.find_files, {}) -- Search project files
vim.keymap.set('n', '<Leader>pg', telescope_builtin.live_grep, {})  -- Rip grep project files
vim.keymap.set('n', '<Leader>pb', telescope_builtin.buffers, {})    -- Search project buffers
vim.keymap.set('n', '<Leader>pm', telescope_builtin.marks, {})      -- Search project marks
vim.keymap.set('n', '<Leader>pr', telescope_builtin.registers, {})  -- Search registers content
vim.keymap.set('n', '<Leader>ph', telescope_builtin.help_tags, {})  -- Search help tags

