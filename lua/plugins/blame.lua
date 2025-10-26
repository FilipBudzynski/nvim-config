return {
    {
        "FabijanZulj/blame.nvim",
        lazy = false,
        config = function()
            require("blame").setup()
        end,
        keys = {
            { "<leader>gb", false },
            { "<leader>gb", "<cmd>BlameToggle<cr>", desc = "Toggle Git Blame" },
        },
    },
}
