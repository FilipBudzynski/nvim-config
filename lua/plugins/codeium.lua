return {
  "Exafunction/codeium.vim",
  config = function()
    -- Set up key mappings
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,

  keys = {
    -- toggle codeium on leader c j
    -- {
    --   "<leader>cj",
    --   function()
    --     vim.g.codeium_enabled = not vim.g.codeium_enabled
    --     local status = vim.fn["codeium#GetStatusString"]()
    --     vim.cmd("echo '" .. status .. "'")
    --   end,
    --   desc = "Toggle codeium",
    -- },
    {
      "<leader>cj",
      function()
        -- Toggle Codeium plugin wiht cmd commands Codeium Enable and Codeium Disable
        if vim.g.codeium_enabled then
          vim.cmd(":Codeium Disable")
          vim.g.codeium_enabled = false
          print("Codeium disabled!")
        else
          vim.cmd(":Codeium Enable")
          vim.g.codeium_enabled = true
          print("Codeium enabled!")
        end
        local status = vim.fn["codeium#GetStatusString"]()
        vim.cmd("echo '" .. status .. "'")
      end,
      desc = "Toggle codeium",
    },
    {
      "<leader>ck",
      function()
        local status = vim.fn["codeium#GetStatusString"]()
        vim.cmd("echo '" .. status .. "'")
      end,
      desc = "Show Codeium status",
    }
  },
}
