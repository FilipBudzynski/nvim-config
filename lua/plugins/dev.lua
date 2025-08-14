return {
  {
    dir = "~/plugins/present.nvim",
    config = function()
      require("present")
    end,
  },

  {
    dir = "~/plugins/convim.nvim",
    config = function()
      require("convim")
    end,
  },
}
