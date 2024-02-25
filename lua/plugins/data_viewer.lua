return {
    "vidocqh/data-viewer.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "kkharji/sqlite.lua", -- Optional, sqlite support
    },

    opts = {},

    keys = {
        {
            "<leader>dv",
            "<cmd>DataViewer<cr>",
            desc = "open DataViewer",
        },
        {
            "<leader>dc",
            "<cmd>DataViewerClose<cr>",
            desc = "close DataViewer",
        },
    },
}
