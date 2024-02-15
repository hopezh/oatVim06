return {
    "Wansmer/treesj",

    keys = {
        {
            "<leader>cj",
            "<CMD>TSJToggle<CR>",
            desc = "Toggle Treesiter Join",
        },

        -- {
        --     "<leader>cj",
        --     "<CMD>TSJJoin<CR>",
        --     desc = "Join code block into one line",
        -- },

        -- {
        --     "<leader>cs",
        --     "<CMD>TSJSplit<CR>",
        --     desc = "Split into multiple lines",
        -- },
    },

    cmd = {
        "TSJToggle",
        "TSJSplit",
        "TSJJoin",
    },

    dependencies = { "nvim-treesitter/nvim-treesitter" },

    opts = {
        use_default_keymaps = false,
    },

    config = function()
        require("treesj").setup({
            --[[ your config ]]

            -- If line after join will be longer than max value,
            -- node will not be formatted
            max_join_length = 1000,
        })
    end,
}
