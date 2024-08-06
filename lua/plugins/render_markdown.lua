return {
    "MeanderingProgrammer/render-markdown.nvim",
    -- enable = false,

    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons

    config = function()
        require("render-markdown").setup({
            code = {
                -- above = '▄',     -- Used above code blocks for thin border
                -- below = '▀',     -- Used below code blocks for thin border
                above = "",
                below = "",
            },

            file_types = { "markdown", "quarto" },
        })
    end,
}
