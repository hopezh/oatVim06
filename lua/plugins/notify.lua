return {
    {
        "rcarriga/nvim-notify",

        opts = {
            -- when using transparent in tokyonight, need to set a bg color here
            background_colour = "#000000",

            -- move message window to lower right corner
            top_down = false,
        },

        -- the above is equivalent to the following:
        -- require("notify").setup({
        --     -- when using transparent in tokyonight, need to set a bg color here
        --     background_colour = "#000000",
        -- }),
    },
}
