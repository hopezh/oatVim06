return {
    "shellRaining/hlchunk.nvim",

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
            },

            indent = {
                chars = {
                    -- "│",  -- default
                    " ",
                },
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
