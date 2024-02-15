return {
    "AntonVanAssche/md-headers.nvim",

    version = "*",

    lazy = false,

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },

    keys = {
        {
            "<leader>mdh",
            "<cmd>MarkdownHeaders<cr>",
            desc = "show md headers",
        },
        {
            "<leader>mdc",
            "<cmd>MarkdownHeadersClosest<cr>",
            desc = "show md headers closest",
        },
    },

    config = function()
        require("md-headers").setup()
    end,
}
