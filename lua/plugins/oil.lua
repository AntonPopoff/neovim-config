return {
    'stevearc/oil.nvim',
    lazy = true,
    config = function()
        require('oil').setup({
            columns = {
                'permissions',
                'size',
                'mtime',
            },
            view_options = {
                show_hidden = true,
            },
        })
    end,
    keys = {
        { '<Leader>e', vim.cmd.Oil, mode = 'n' },
    },
}
