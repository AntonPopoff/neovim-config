-- Vim bindings start

-- Disable some nasty keys before doing everything else
-- Disable "Space" key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<nop>')

-- Disable arrow keys
vim.keymap.set({ 'n', 'i', 'v' }, '<Down>', '<Nop>')
vim.keymap.set({ 'n', 'i', 'v' }, '<Up>', '<Nop>')
vim.keymap.set({ 'n', 'i', 'v' }, '<Left>', '<Nop>')
vim.keymap.set({ 'n', 'i', 'v' }, '<Right>', '<Nop>')

-- OS clipboard mappings
vim.keymap.set({ 'v', 'n' }, '<Leader>oy', '\"*y') -- Copy to OS clipboard in visual mode
vim.keymap.set({ 'n' }, '<Leader>oyy', '\"*yy')    -- Copy to OS clipboard an entire line in normal mode
vim.keymap.set({ 'v', 'n' }, '<Leader>op', '\"*p') -- Paste from OS clipboard after the cursor
vim.keymap.set({ 'v', 'n' }, '<Leader>oP', '\"*P') -- Paste from OS clipboard before the cursor

-- Vim clipboard mapping
vim.keymap.set({ 'v' }, '<Leader>P', '"_dP')

-- Disable search highlighting
vim.keymap.set({ 'n' }, '<Leader>so', ':nohlsearch<CR>')

-- Panes and tabs mappings
vim.keymap.set({ 'n' }, '<Leader>sv', ':vsplit<CR>') -- Open vertical split pane
vim.keymap.set({ 'n' }, '<Leader>sh', ':split<CR>')  -- Open horizontal split pane
vim.keymap.set({ 'n' }, '<Leader>t', ':tabe<CR>')    -- Open a new tab

-- Split panes navigation mappings
vim.keymap.set({ 'n' }, '<Leader>j', '<C-w>j')
vim.keymap.set({ 'n' }, '<Leader>k', '<C-w>k')
vim.keymap.set({ 'n' }, '<Leader>h', '<C-w>h')
vim.keymap.set({ 'n' }, '<Leader>l', '<C-w>l')
vim.keymap.set({ 'n' }, '<Leader>r', '<C-w>r')

-- Resize panes mappings
vim.keymap.set({ 'n' }, '<Leader>=', '<C-w>=')
vim.keymap.set({ 'n' }, '<M-=>', '3<C-w>+')
vim.keymap.set({ 'n' }, '<M-->', '3<C-w>-')
vim.keymap.set({ 'n' }, '<M-,>', '2<C-w><')
vim.keymap.set({ 'n' }, '<M-.>', '2<C-w>>')

-- Map CTRL+c to Escape
vim.keymap.set({ 'n', 'i', 'v' }, '<C-c>', '<Esc>')

-- Place cursor at the center of the screen while scrolling
vim.keymap.set({ 'n' }, '<C-d>', '<C-d>zz')
vim.keymap.set({ 'n' }, '<C-u>', '<C-u>zz')
vim.keymap.set({ 'n' }, '<C-f>', '<C-f>zz')
vim.keymap.set({ 'n' }, '<C-b>', '<C-b>zz')

-- Place search result at the center of the screen
vim.keymap.set({ 'n' }, 'n', 'nzz')
vim.keymap.set({ 'n' }, 'N', 'Nzz')

