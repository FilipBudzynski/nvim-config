-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- swap buffers
-- vim.keymap.set("n", "<S-h>", vim.cmd.bp)
-- vim.keymap.set("n", "<S-l>", vim.cmd.bn)

-- get three vim splits
vim.keymap.set("n", "<C-w>m", ":lua SetupThreeSplits()<CR>", { noremap = true })

function SetupThreeSplits()
  vim.cmd("vsplit")
  vim.cmd("wincmd >")
  vim.cmd("vsplit")
  vim.cmd("wincmd <")
  vim.cmd("wincmd w")
end

-- center the screen after N/n ---
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "{", "{zzzv")
vim.keymap.set("n", "}", "}zzzv")
vim.keymap.set("n", "*", "*zzzv")

-- tmux sessionizer in vim--
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>=", "<cmd>silent !tmux-app-runner<CR>")
vim.keymap.set(
  "n",
  "<leader>=",
  ":let user_args = input('Enter arguments: ') | execute ':silent !tmux-app-runner'  user_args<CR>",
  { noremap = true }
)

-- subsittution --
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", [[:s/]])

-- change diagnostic symbols to letters
local symbols = { Error = "E", Info = "I", Hint = "H", Warn = "W" }

for name, icon in pairs(symbols) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, numhl = "", texthl = hl })
end

