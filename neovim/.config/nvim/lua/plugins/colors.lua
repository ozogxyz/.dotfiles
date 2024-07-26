-- function ColorMyPencils(color)
--   color = color or "github_dark"
--   vim.cmd.colorscheme(color)
--
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
function SetColorscheme(colors)
  local isDarkMode = vim.fn.system "defaults read -g AppleInterfaceStyle 2>/dev/null" == "Dark\n"
  if isDarkMode then
    vim.cmd.colorscheme(colors.dark)
  else
    vim.cmd.colorscheme(colors.light)
  end
end

return {
  { "catppuccin/nvim" },
  { "Verf/deepwhite.nvim" },
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup {
        options = { transparent = true },
      }
      SetColorscheme { dark = "github_dark", light = "github_light" }
    end,
  },
}
