local dap = require('dap')

dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
        command = 'codelldb', -- symlink to a local codelldb installation
        args = { '--port', '${port}' },
    }
}

dap.configurations.c = {
    {
        name = 'Launch file',
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = dap.configurations.c
