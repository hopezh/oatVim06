return {
    "lukas-reineke/indent-blankline.nvim",

    main = "ibl", -- since v3

    -- -- [since v3] baisc config
    -- config = function()
    --     require("ibl").setup()
    -- end,

    -- [since v3] use bg color for indentation area
    config = function()
        local highlight = {
            "CursorColumn",
            "Whitespace",
        }
        require("ibl").setup({
            indent = {
                highlight = highlight,
                char = "",
            },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = false,
            },
            scope = { enabled = false },
        })
    end,

    -- method 1: use "opts{}" to change some options
    -- opts = {
    --     -- char = "│",
    --     char = "▏", -- my indent symbol
    --
    --     show_current_context = true, -- highlight the context
    --     show_current_context_start = false,
    --     show_trailing_blankline_indent = false,
    -- },

    -- method 2: use "require("pluinName").setup({})" to change some options
    -- config = function()
    --     vim.opt.termguicolors = true
    --     -- vim.cmd([[highlight IndentBlanklineIndent1 guibg=#242424 gui=nocombine]])
    --     vim.cmd([[highlight IndentBlanklineIndent2 guibg=#ff0000 gui=nocombine]])
    --
    --     require("indent_blankline").setup({
    --         -- char = "▏", -- indent symbol
    --         -- char = "│",
    --         char = " ",
    --
    --         -- set custom bg colors for indent char and indent space
    --         char_highlight_list = {
    --             "IndentBlanklineIndent1",
    --             "IndentBlanklineIndent2",
    --         },
    --         space_char_highlight_list = {
    --             "IndentBlanklineIndent1",
    --             "IndentBlanklineIndent2",
    --         },
    --
    --         show_current_context = true, -- highlight the context
    --         show_current_context_start = false,
    --         show_trailing_blankline_indent = false,
    --     })
    -- end,
}
