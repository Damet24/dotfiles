local status_ok, colorscheme = pcall(require, 'kanagawa')
if not status_ok then
  return
end

-- vim.o.background = 'dark'
--
-- colorscheme.setup({
--   undercurl = true,   -- enable undercurls
--   commentStyle = { italic = false },
--   functionStyle = {},
--   keywordStyle = { italic = false },
--   statementStyle = { bold = true, italic = false },
--   typeStyle = {},
--   transparent = false,     -- do not set background color
--   dimInactive = false,     -- dim inactive window `:h hl-NormalNC`
--   terminalColors = true,   -- define vim.g.terminal_color_{0,17}
--   colors = {
--                            -- add/modify theme and palette colors
--     palette = {},
--     theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--   },
--   -- overrides = function(colors)   -- add/modify highlights
--   --  return {}
--   -- end,
--   theme = "wave",      -- Load "wave" theme when 'background' option is not set
--   background = {
--                        -- map the value of 'background' option to a theme
--     dark = "wave",     -- try "dragon" !
--     -- light = "lotus"
--   },
-- })

-- setup must be called before loading
vim.cmd("colorscheme github_dark")
