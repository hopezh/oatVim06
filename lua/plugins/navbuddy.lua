return {
    "SmiteshP/nvim-navbuddy",

    dependencies = {
        "neovim/nvim-lspconfig",
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
    },

    lazy = false,

    keys = {
        {
            "<leader>nv",
            "<cmd>Navbuddy<cr>",
            desc = "Navbuddy",
        },
    },

    config = function()
        local navbuddy = require("nvim-navbuddy")
        local actions = require("nvim-navbuddy.actions")

        navbuddy.setup({
            window = {
                border = "rounded",
                size = "80%",
            },

            mappings = {
                ["j"] = actions.next_sibling(),
                ["k"] = actions.previous_sibling(),
                ["h"] = actions.parent(),
                ["l"] = actions.children(),
            },

            lsp = {
                auto_attach = true,
                preference = "nvim_lsp",
            },
        })
    end,
}
