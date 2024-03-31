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

-- Use the same CodeLLDB config for C and C++ as well
dap.configurations.c = dap.configurations.rust
dap.configurations.cpp = dap.configurations.rust
