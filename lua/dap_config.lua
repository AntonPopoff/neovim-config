-- DAP configuration for Rust and C/C++ languages
-- via Visual Studio Code's CodeLLDB extensions

-- Note:
-- It maybe be nice to use GDB and RustGDB binaries
-- in the future but it seems that we need GDB 14.1+ for that

local dap = require('dap')

-- symlink to a local codelldb installation
local codelldb_exec = 'codelldbx'
local codelldb_port = 15000

dap.adapters.codelldb = {
    type = 'server',
    port = codelldb_port,
    executable = {
        command = codelldb_exec,
        args = { "--port", codelldb_port },
    }
}

dap.configurations.rust = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

dap.configurations.cpp = dap.configurations.rust
dap.configurations.c = dap.configurations.rust

local dapui = require('dapui')

dapui.setup()

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.keymap.set({ 'n' }, '<F5>', dap.continue)
vim.keymap.set({ 'n' }, '<S-F5>', dap.terminate)
vim.keymap.set({ 'n' }, '<F8>', dap.step_over)
vim.keymap.set({ 'n' }, '<F7>', dap.step_into)
vim.keymap.set({ 'n' }, '<S-F7>', dap.step_out)
vim.keymap.set({ 'n' }, '<Leader>b', dap.toggle_breakpoint)
