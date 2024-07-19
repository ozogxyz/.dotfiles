function ColorMyPencils(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--       require("catppuccin").setup {
--         flavour = "auto",
--         background = {
--           light = "latte",
--           dark = "frappe",
--         },
--         styles = {
--           italic = false,
--         },
--         vim.cmd "colorscheme catppuccin",
--         ColorMyPencils "catppuccin-latte",
--       }
--     end,
--   },
-- }
--
-- return {
--   {
--     "projekt0n/github-nvim-theme",
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require("github-theme").setup {
--         -- ...
--       }
--
--       --vim.cmd "colorscheme github_light"
--     end,
--   },
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--   priority = 1000,
--   config = function()
--     require("kanagawa").setup {
--       keywordstyle = {},
--       statementstyle = {},
--     }
--
--     vim.cmd "colorscheme kanagawa"
--     ColorMyPencils "kanagawa"
--   end,
-- }

return {
  {
    "Verf/deepwhite.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd "colorscheme deepwhite"
      ColorMyPencils "deepwhite"
    end,
  },
}
