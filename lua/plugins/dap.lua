return {
    'mfussenegger/nvim-dap',
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",

    -- Configure plugin for Go debugging
    {
        'leoluz/nvim-dap-go',
        config = function()
            require('dap-go').setup()
        end
    },
}
