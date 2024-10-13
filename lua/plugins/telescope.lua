local builtin = require("telescope.builtin")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ss",
      builtin.live_grep,
      desc = "Live grep",
    },

    {
      "<leader>ts",
      function()
        local word = vim.fn.expand("<cword>")
        builtin.grep_string({ search = word })
      end,
      desc = "Greps the word under the cursor",
    },
    {
      "<leader>n",
      function()
        local word = vim.fn.expand("<cword>")
        vim.fn.feedkeys("/" .. word .. "\n", "n")
      end,
      desc = "Greps the word under the cursor and puts it in /",
    },
    {
      "<leader>tS",
      function()
        local word = vim.fn.expand("<cWORD>")
        builtin.grep_string({ search = word })
      end,
      desc = "Greps the word under cursor to the space ' ' ",
    },
    {
      "<leader>;t",
      "<cmd>:TodoTelescope<cr>",
      desc = "Greps the word under cursor to the space ' ' ",
    },

    -- git commands
    {
      "<leader>gb",
      builtin.git_branches,
      desc = "Git branches",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
