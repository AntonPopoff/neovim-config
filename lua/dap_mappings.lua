-- Setup some useful binding for DAP plugin
local dap = require('dap')
vim.keymap.set({ 'n' }, '<F5>', dap.continue)
vim.keymap.set({ 'n' }, '<S-F5>', dap.terminate)
vim.keymap.set({ 'n' }, '<F8>', dap.step_over)
vim.keymap.set({ 'n' }, '<F7>', dap.step_into)
vim.keymap.set({ 'n' }, '<S-F7>', dap.step_out)
vim.keymap.set({ 'n' }, '<Leader>b', dap.toggle_breakpoint)
