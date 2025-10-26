return {
    "folke/zen-mode.nvim",
    keys = {
        {
            "<C-w>z",
            function()
                vim.cmd(":ZenMode")
            end,
        },
    },
}
