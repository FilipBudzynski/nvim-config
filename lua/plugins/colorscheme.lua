local rose_pine_variant = "main"

return {
  -- {
  --   "metalelf0/base16-black-metal-scheme",
  --   config = function()
  --     require("base16-black-metal-scheme").setup({
  --       options = {
  --         transparent = true,
  --       },
  --     })
  --     vim.cmd("colorscheme base16-black-metal-gorgoroth")
  --   end,
  -- },
  -- {
  --   "tjdevries/colorbuddy.nvim",
  --   vim.cmd.colorscheme("gruvbuddy"),
  --   config = function()
  --     require("colorbuddy").setup({
  --       options = {
  --         transparent = true,
  --       },
  --     })
  --   end,
  -- },

  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false,
  --   priority = 1100,
  --   config = function()
  --     require("github-theme").setup({
  --       options = {
  --         transparent = true,
  --       },
  --     })
  --     vim.cmd("colorscheme github_dark")
  --   end,
  -- },
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
        --- @usage 'main'|'moon'|'dawn'
        -- dark_variant = "main",
        -- disable_background = true,
        --
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },

        before_highlight = function(group, highlight, palette)
          if rose_pine_variant == "main" then
            if highlight.fg == palette.pine then
              highlight.fg = "#477878"
            -- highlight.fg = "#2c5757"
            elseif highlight.fg == palette.gold then
              -- highlight.fg = "#f8a77c"
              highlight.fg = "#f5ae8c"
            -- highlight.fg = "#c2ab9c"
            elseif highlight.fg == palette.love then
              highlight.fg = "#dd4574"
            elseif highlight.fg == palette.rose then
              -- highlight.fg = "#feaaac"
              highlight.fg = "#d9b7b4"
            elseif highlight.fg == palette.foam then
              highlight.fg = "#accecf"
            elseif highlight.fg == palette.iris then
              highlight.fg = "#deadd8"
              -- highlight.fg = "#d9b7b4"
              -- elseif highlight.fg == palette.subtle then
              --     highlight.fg = "#645e66"
              --
            end
          end
        end,
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
  -- everforest
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        background = "hard",
      })
    end,
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },
}
