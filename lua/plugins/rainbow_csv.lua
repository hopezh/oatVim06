return {
    "cameron-wags/rainbow_csv.nvim",

    config = true,

    ft = {
        "csv",
        "tsv",
        "csv_semicolon",
        "csv_whitespace",
        "csv_pipe",
        "rfc_csv",
        "rfc_semicolon",
    },

    cmd = {
        "RainbowDelim",
        "RainbowDelimSimple",
        "RainbowDelimQuoted",
        "RainbowMultiDelim",
    },

    keys = {
        { --[[Align CSV columns with whitespaces.
            Don't run this command if you treat leading and trailing whitespaces in fields as part of the data. 
            ]] --
            "<leader>ra",
            "<cmd>RainbowAlign<cr>",
            desc = "Rainbow Align",
        },
        { --[[Remove leading and trailing whitespaces from all fields. 
            Opposite to RainbowAlign
            ]] --
            "<leader>rs",
            "<cmd>RainbowShrink<cr>",
            desc = "Rainbow Shrink",
        },
    },
}
