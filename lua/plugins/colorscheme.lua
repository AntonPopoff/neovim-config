return {
    'rebelot/kanagawa.nvim',
    config = function()
        require('kanagawa').setup({
            theme = 'dragon',    -- Set 'Dragon' palette as a default for Kanagwa theme
            background = 'none', -- Disable background so 'theme' attributes works
            compile = true,
            -- Disable background color for line numbers column
            colors = { theme = { all = { ui = { bg_gutter = 'none' } } } }
        })
        vim.cmd('colorscheme kanagawa')
    end,
}
