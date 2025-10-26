local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        { import = "plugins" },
    },
})

-- Change colorscheme based on system settings
local handle = io.popen("defaults read -g AppleInterfaceStyle")
local mode = handle and handle:read("*l") or ""
if handle ~= nil then
    handle:close()
end

if mode:match("Dark") then
    vim.cmd.colorscheme("github_dark")
else
    vim.cmd.colorscheme("jb")
end
