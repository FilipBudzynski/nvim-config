local rose_pine_variant = "main"

return {
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false,
        priority = 900,
        config = function()
            require("github-theme").setup({
                options = {
                    transparent = true,
                },
            })

            vim.cmd("colorscheme github_light_default")
        end,
    },
    {
        "rose-pine/neovim",
        lazy = false,
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                --- @usage 'auto'|'main'|'moon'|'dawn'
                variant = rose_pine_variant,
                styles = {
                    bold = false,
                    italic = false,
                    transparency = true,
                },
            })
            vim.cmd("colorscheme rose-pine")
        end,
    },

    {
        "RRethy/base16-nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme base16-black-metal-gorgoroth")
            -- vim.cmd("colorscheme github_light")
            -- vim.cmd("colorscheme base16-classic-light")
        end,
    },
    -- {
    --   "mcchrish/zenbones.nvim",
    --   config = function()
    --     require("lush")
    --     vim.cmd("colorscheme zenbones")
    --   end,
    -- },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        wave = {},
                        lotus = {},
                        dragon = {},
                        all = { ui = {
                            bg_gutter = "none",
                        } },
                    },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave", -- Load "wave" theme when 'background' option is not set
                background = { -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus",
                },
            })
            vim.cmd("colorscheme kanagawa-dragon")
        end,
    },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                background = "hard",
            })
        end,
    },
    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "nickkadutskyi/jb.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("jb").setup({ transparent = true })
            vim.cmd("colorscheme jb")
        end,
    },
}
