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
            "<cmd>Trouble todo toggle<cr>",
            -- "<cmd>Trouble todo toggle keywords=oat<cr>",
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
            -- FIX = {
            --     icon = " ", -- icon used for the sign, and in search results
            --     color = "error", -- can be a hex color, or a named color (see below)
            --     alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
            --     -- signs = false, -- configure signs for some keywords individually
            -- },
            -- TODO = { icon = " ", color = "info" },
            -- HACK = { icon = " ", color = "warning" },
            -- WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
            -- PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
            -- NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
            -- TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
    },
}
