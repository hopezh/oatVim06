return {
    "lukas-reineke/headlines.nvim",

    priority = 1000,

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },

    config = function()
        -- highlight color for headlines.nvim ----------------------------------
        vim.cmd([[highlight Headline1 guibg=#999999 guifg=#0000ff]]) -- not working...
        vim.cmd([[highlight Headline2 guibg=#777777 guifg=#000000]])
        vim.cmd([[highlight Headline3 guibg=#555555 guifg=#000000]])
        vim.cmd([[highlight CodeBlock guibg=#252525]])
        vim.cmd([[highlight Dash guibg=#1010101]])
        -- vim.cmd([[highlight Dash guibg=#ffff00 guifg=#0000ff gui=bold]])  -- test

        require("headlines").setup({
            quarto = {
                headline_highlights = false,

                query = vim.treesitter.query.parse(
                    "markdown",
                    [[
                        (thematic_break) @dash
                        (fenced_code_block) @codeblock
                        (block_quote (paragraph (inline (block_continuation) @quote)))
                        (block_quote_marker) @quote
                    ]]
                ),

                treesitter_language = "markdown",

                headline_highlights = {
                    "Headline1",
                    "Headline2",
                    "Headline3",
                },

                codeblock_highlight = "CodeBlock",
                dash_highlight = "Dash",
                dash_string = "-",
                quote_highlight = "Quote",
                quote_string = "┃",
                fat_headlines = true,
                -- fat_headline_upper_string = "▃",
                -- fat_headline_lower_string = "🬂",
                fat_headline_upper_string = "-",
                fat_headline_lower_string = "",
            },

            markdown = {
                query = vim.treesitter.query.parse(
                    "markdown",
                    [[
                        (thematic_break) @dash
                        (fenced_code_block) @codeblock
                        (block_quote_marker) @quote
                        (block_quote (paragraph (inline (block_continuation) @quote)))
                    ]]
                ),

                treesitter_language = "markdown",

                -- headline_highlights = { "Headline" },
                headline_highlights = {
                    "Headline1",
                    "Headline2",
                    "Headline3",
                },
                codeblock_highlight = "CodeBlock",
                dash_highlight = "Dash",
                dash_string = "-",
                quote_highlight = "Quote",
                quote_string = "┃",
                fat_headlines = true,
                -- fat_headline_upper_string = "▃",
                -- fat_headline_lower_string = "🬂",
                fat_headline_upper_string = "",
                fat_headline_lower_string = "",
            },
        })
    end,
}
