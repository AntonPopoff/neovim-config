-- Treesitter config start

-- Setup Treesitter itself
require('nvim-treesitter.configs').setup {
    -- A list of parser names, or 'all' (listed parsers should always be installed)
    ensure_installed = {},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}

-- Setup Treesitter context plugin
require('treesitter-context').setup {
    enable = true,              -- Enable this plugin (Can be enabled/disabled later via commands)

    -- How many lines the window should span. Values <= 0 mean no limit.
    -- 1 = Show only method signature
    max_lines = 1,

    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    min_window_height = 0,

    -- Show relative line number for a context
    line_numbers = true,

    -- Maximum number of lines to show for a single context
    multiline_threshold = 20,

    -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    trim_scope = 'outer',

    -- Line used to calculate context. Choices: 'cursor', 'topline'
    mode = 'cursor',

    -- Separator between context and content. Should be a single character string, like '-'.
    -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
    separator = nil,

    -- The Z-index of the context window
    zindex = 20,

    -- (fun(buf: integer): boolean) return false to disable attaching
    on_attach = nil,
}
