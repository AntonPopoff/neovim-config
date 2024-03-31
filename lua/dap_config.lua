-- DAP configuration for Rust and C/C++ languages
-- via Visual Studio Code's CodeLLDB extensions

-- Note:
-- It maybe be nice to use GDB and RustGDB binaries
-- in the future but it seems that we need GDB 14.1+ for that

local dap = require('dap')

dap.adapters.codelldb = {
    type = 'server',
    port = '15000',
    executable = {
        command = 'codelldb', -- symlink to a local codelldb installation
        args = { "--port", '15000' },
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

dap.adapters.delve = {
    type = 'server',
    port = '15000',
    executable = {
        command = 'dlv',
        args = { 'dap', '-l', '127.0.0.1:15000' },
    }
}

dap.configurations.go = {
    {
        type = "delve",
        name = "Debug",
        request = "launch",
        program = "${file}"
    },
    {
        type = "delve",
        name = "Debug test", -- configuration for debugging test files
        request = "launch",
        mode = "test",
        program = "${file}"
    },
    -- works with go.mod packages and sub packages
    {
        type = "delve",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    }
}

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
