return {
    "folke/todo-comments.nvim",

    keys = {
        -- {
        --     "<leader>xO",
        --     "<cmd>TodoLocList keywords=oat<cr>",
        --     desc = "show oat in this project",
        -- },
        {
            "<leader>zo",
            "<cmd>TodoTrouble keywords=oat<cr>",
            desc = "show oat in Trouble",
        },
        {
            "<leader>zl",
            "<cmd>TodoTelescope keywords=oat<cr>",
            desc = "show oat in Telescope",
        },
    },

    -- add custom comment keyword ----------------------------------------------
    opts = {
        merge_keywords = true,
        keywords = {
            o = { icon = "", color = "#505050" },
        },
    },
}
