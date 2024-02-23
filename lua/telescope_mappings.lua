-- Telescope key bindings
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>pf', telescope_builtin.find_files, {}) -- Search project files
vim.keymap.set('n', '<Leader>pg', telescope_builtin.live_grep, {})  -- Rip grep project files
vim.keymap.set('n', '<Leader>pb', telescope_builtin.buffers, {})    -- Search project buffers
vim.keymap.set('n', '<Leader>pm', telescope_builtin.marks, {})      -- Search project marks
vim.keymap.set('n', '<Leader>pr', telescope_builtin.registers, {})  -- Search registers content
vim.keymap.set('n', '<Leader>ph', telescope_builtin.help_tags, {})  -- Search help tags

