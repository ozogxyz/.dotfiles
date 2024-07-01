function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("tokyonight").setup {
        style = "night",
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
        },
      }
      vim.cmd "colorscheme tokyonight-night"
      ColorMyPencils "tokyonight-night"
    end,
  },
}
