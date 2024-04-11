local dap = require('dap')
local codelldb_port = 15000

dap.adapters.codelldb = {
    type = 'server',
    port = codelldb_port,
    executable = {
        command = 'codelldb', -- symlink to a local codelldb installation
        args = { '--port', codelldb_port },
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
