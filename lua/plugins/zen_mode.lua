return {
    "folke/zen-mode.nvim",

    keys = {
        {
            "<leader>zz",
            "<cmd>ZenMode<cr>",
            desc = "Zen Mode",
        },
    },

    config = function()
        local zen = require("zen-mode")

        zen.setup({
            window = {
                backdrop = 0.9,
                width = 120,
                options = {
                    -- signcolumn = "no",
                    -- number = false,
                },
            },
        })
    end,
}
