return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    opts = {
        keymap = { preset = "super-tab" },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        signature = { enabled = true },
    },
}

-- THE FOLLOWIN SETUP IS TO PRIORITIZE SUPERMAVEN-NVIM
-- return {
--   "saghen/blink.cmp",
--   dependencies = {
--     "rafamadriz/friendly-snippets",
--     "supermaven-inc/supermaven-nvim", -- Ensure Supermaven is a dependency or loaded
--   },
--   version = "v0.*",
--   opts = {
--     -- Remove the preset so we can define a custom <Tab> that prioritizes Supermaven
--     keymap = {
--       preset = "default", -- You can start with default or "enter" as a base
--       ["<Tab>"] = {
--         -- 1. Custom function to accept Supermaven inline ghost text
--         function(cmp)
--           -- Check if supermaven-nvim.completion_preview is loaded
--           local ok, supermaven = pcall(require, "supermaven-nvim.completion_preview")
--
--           -- If Supermaven is loaded AND has a suggestion
--           if ok and supermaven.has_suggestion() then
--             -- Schedule the accept action and return true to stop further key processing
--             vim.schedule(supermaven.on_accept_suggestion)
--             return true
--           end
--
--           -- If Supermaven has no suggestion, let the completion plugin handle it
--           -- The super-tab logic is usually a combination of 'select_next' and 'snippet_forward'
--           cmp.select_next()
--           return true -- Return true if you want to prevent inserting a literal tab
--         end,
--
--         -- 2. Fallback actions (e.g., snippet expansion, next completion)
--         "snippet_forward", -- For LuaSnip or friendly-snippets
--         "select_next",    -- For the next item in the popup menu
--         "fallback",       -- If nothing else happens, insert a literal tab
--       },
--       ["<S-Tab>"] = {
--         "snippet_backward", -- For going backward in snippets
--         "select_prev",      -- For the previous item in the popup menu
--         "fallback",
--       },
--       -- You can keep other keymaps from the preset or define them here
--     },
--     appearance = {
--       use_nvim_cmp_as_default = true,
--       nerd_font_variant = "mono",
--     },
--     signature = { enabled = true },
--   },
-- }
