return {
    'nvim-neotest/nvim-nio',
    {
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require('dap')
            vim.keymap.set({ 'n' }, '<S-F5>', dap.terminate)
            vim.keymap.set({ 'n' }, '<F8>', dap.step_over)
            vim.keymap.set({ 'n' }, '<F7>', dap.step_into)
            vim.keymap.set({ 'n' }, '<S-F7>', dap.step_out)
            vim.keymap.set({ 'n' }, '<Leader>b', dap.toggle_breakpoint)

            -- Hook into DAP events to automatically show and hide DAP UI
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
        end,
        keys = {
            { '<F5>', vim.cmd.DapContinue, mode = 'n' },
            { '<F6>', vim.cmd.DapContinue, mode = 'n' },
        },
    },
    {
        'rcarriga/nvim-dap-ui',
        lazy = true,
    },
    {
        'leoluz/nvim-dap-go',
        config = function() require('dap-go').setup() end,
        ft = { 'go' },
    },
}
