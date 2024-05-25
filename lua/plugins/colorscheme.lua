return {
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    -- },

    -- { "ellisonleao/gruvbox.nvim" },

    -- { "rebelot/kanagawa.nvim" },
    --
    -- { "EdenEast/nightfox.nvim" },

    {
        "diegoulloao/neofusion.nvim",
        priority = 1000,
        config = true,
        opts = {},
    },

    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "gruvbox",
            -- colorscheme = "catppuccin",
            -- colorscheme = "kanagawa-dragon",
            -- colorscheme = "nightfox",
            -- colorscheme = "neofusion",
        },
    },
}
