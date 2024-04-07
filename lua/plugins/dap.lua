return {
    "nvim-neotest/nvim-nio",
    {
        'mfussenegger/nvim-dap',

        config = function()
            -- Add some useful dap mappings
            local dap = require('dap')
            vim.keymap.set({ 'n' }, '<F5>', dap.continue)
            vim.keymap.set({ 'n' }, '<F6>', dap.continue)
            vim.keymap.set({ 'n' }, '<S-F5>', dap.terminate)
            vim.keymap.set({ 'n' }, '<F8>', dap.step_over)
            vim.keymap.set({ 'n' }, '<F7>', dap.step_into)
            vim.keymap.set({ 'n' }, '<S-F7>', dap.step_out)
            vim.keymap.set({ 'n' }, '<Leader>b', dap.toggle_breakpoint)
        end
    },
    {
        "rcarriga/nvim-dap-ui",

        config = function()
            -- Hook into DAP events to automatically show and hide DAP UI
            local dap = require('dap')
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
        end
    },
    -- Configure plugin for Go debugging
    {
        'leoluz/nvim-dap-go',
        config = function()
            require('dap-go').setup()
        end
    },
}
