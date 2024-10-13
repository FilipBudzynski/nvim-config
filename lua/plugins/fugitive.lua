return {
  "tpope/vim-fugitive",
  lazy = false,
  keys = {
    { "<leader>G", "<cmd>:tab Git <cr>", desc = "Open git fugitive" },
    { "<leader>gl", "<cmd>:tab Git log <cr>", desc = "Open git fugitive log" },
  },
}
