return {

  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1100,
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        },
      })
      vim.cmd("colorscheme github_dark")
    end,
  },

  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        --- @usage 'auto'|'main'|'moon'|'dawn'
        variant = "main",
        --- @usage 'main'|'moon'|'dawn'
        -- dark_variant = "main",
        -- disable_background = true,

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },

        before_highlight = function(group, highlight, palette)
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
        end,
      })
      vim.cmd("colorscheme rose-pine")
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
    priority = 1101,
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
}
