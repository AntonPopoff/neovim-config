-- Use rustaceanvim's RustLsp command to start debbuging session instead of dap.continue
vim.keymap.set({ 'n' }, '<F5>', function() vim.cmd.RustLsp('debuggables') end)

