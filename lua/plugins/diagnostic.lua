-- return {
--   "neovim/nvim-lspconfig",
--   lazy = false,
--   init = function()
--     local symbols = { Error = "E", Info = "I", Hint = "H", Warn = "W" }
--     for name, icon in pairs(symbols) do
--       local hl = "DiagnosticSign" .. name
--       vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
--     end
--   end,
-- }

return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "E",
          [vim.diagnostic.severity.WARN] = "W",
          [vim.diagnostic.severity.HINT] = "H",
          [vim.diagnostic.severity.INFO] = "I",
        },
      },
    },

    inlay_hints = { enabled = false },
  },
}

-- {
--   "neovim/nvim-lspconfig",
--   opts = {
--   },
-- },
