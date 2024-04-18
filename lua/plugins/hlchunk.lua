return {
    "shellRaining/hlchunk.nvim",
    enabled = false,

    event = { "UIEnter" },

    config = function()
        require("hlchunk").setup({
            -- my settings
            chunk = {
                support_filetypes = {
                    "*.c",
                    "*.cpp",
                    "*.h",
                    "*.hpp",
                    "*.html",
                    "*.java",
                    "*.json",
                    "*.js",
                    "*.jsx",
                    "*.lua",
                    "*.md",
                    "*.py",
                    "*.qmd",
                    "*.ts",
                    "*.tsx",
                },
                exclude_filetypes = {
                    ["neo-tree"] = false,
                },
                chars = {
                    horizontal_line = "─",
                    vertical_line = "│",
                    left_top = "╭",
                    left_bottom = "╰",
                    -- left_bottom = "└",
                    -- right_arrow = ">",
                    -- right_arrow = "",
                    -- right_arrow = "",
                    right_arrow = "",
                },
            },

            indent = {
                use_treesitter = true,
                chars = {
                    -- "│",  -- default
                    -- "▏",
                    " ",
                },
                -- style = {
                --     {
                --         bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
                --     },
                -- },
            },

            blank = {
                chars = {
                    -- ".",  -- default
                    " ",
                },
                style = {
                    { bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("cursorline")), "bg", "gui") },
                    { bg = "", fg = "" },
                },
            },
        })
    end,
}
