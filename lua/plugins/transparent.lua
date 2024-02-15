return {
    "xiyaowong/transparent.nvim",

    lazy = false,

    keys = {
        {
            "<leader>zp",
            "<cmd>TransparentToggle<cr>",
            desc = "Toggle transparent",
        },
    },

    opts = {
        groups = { -- table: default groups
            "Normal",
            "NormalNC",
            "Comment",
            "Constant",
            "Special",
            "Identifier",
            "Statement",
            "PreProc",
            "Type",
            "Underlined",
            "Todo",
            "String",
            "Function",
            "Conditional",
            "Repeat",
            "Operator",
            "Structure",
            "LineNr",
            "NonText",
            "SignColumn",
            "EndOfBuffer",
            "CursorLineNr",
        },

        extra_groups = {
            "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
            "NvimTreeNormal", -- NvimTree
        },
    },
}
