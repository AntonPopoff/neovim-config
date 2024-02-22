return {
    'rebelot/kanagawa.nvim',

    config = function()
        -- Disable background color for numbers column
        -- Copy pasted directly from the github page
        require("kanagawa").setup({
            compile = true,
            colors = { theme = { all = { ui = { bg_gutter = "none" } } } }
        })

        -- Enabled color scheme after it was loaded 
        vim.cmd.colorscheme('kanagawa-dragon')
    end,
}

