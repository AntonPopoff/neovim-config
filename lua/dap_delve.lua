local dap = require('dap')
local dap_utils = require('dap.utils')

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
        name = "Attach",
        request = "attach",
        processId = dap_utils.pick_process,
    },
    {
        type = "delve",
        name = "Debug test",
        request = "launch",
        mode = "test",
        program = "${file}"
    },
    {
        type = "delve",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    }
}
