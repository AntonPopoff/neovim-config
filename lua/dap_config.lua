-- Trying to configure Rust debugger with CodeLLDB

local dap = require('dap')

dap.adapters.codelldb = {
    name = 'codelldb',
    type = 'server',
    host = '127.0.0.1',
    port = 15000,
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

dap.configurations.c = dap.configurations.rust
dap.configurations.cpp = dap.configurations.rust

require('dapui').setup()
