return {
    "nvim-neo-tree/neo-tree.nvim",

    keys = {
        {
            "<leader>e",
            "<cmd>Neotree filesystem reveal float<cr>",
            desc = "open neotree",
        },
        {
            "<leader>b",
            "<cmd>Neotree buffers reveal float<cr>",
            desc = "open buffers",
        },
    },

    opts = {
        popup_border_style = "rounded",

        default_component_configs = {
            indent = {
                -- last_indent_marker = "└", -- default
                last_indent_marker = "╰",
                -- expander_collapsed = "", -- default
                -- expander_expanded = "",  -- default
                expander_collapsed = "",
                expander_expanded = "",
            },
            icon = {
                folder_closed = "",
                folder_open = "",
                -- folder_closed = "",
                -- folder_open = "",
                folder_empty = "󰜌",
            },
        },

        window = {
            position = "float", -- opts: left, right, float
            popup = { -- settings that apply to float position only
                size = { height = "60", width = "100" },
                position = "50%", -- 50% means center it
            },
        },
    },

    config = function(_, opts)
        require("neo-tree").setup(opts)

        -- vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal float<CR>", {})
        -- vim.keymap.set("n", "<leader>b", ":Neotree buffers reveal float<CR>", {})
    end,
}
