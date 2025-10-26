return {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = true,
    keys = {
        { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
        { "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Toggle quick menu" },
        { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Open file 1" },
        { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Open file 2" },
        { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Open file 3" },
        { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Open file 4" },
        { "<leader>j", "<cmd>lua require('harpoon.ui').nav_next()<cr>" },
        { "<leader>k", "<cmd>lua require('harpoon.ui').nav_prev()<cr>" },
    },
}
