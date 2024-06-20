return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		init = function()
			require("tokyonight").setup({
				style = "storm",
				light_style = "day",
				transparent = false,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					functions = {},
					variables = {},
					sidebars = "dark",
					floats = "dark",
				},
				sidebars = { "qf", "help" },
				day_brightness = 0.3,
				hide_inactive_statusline = false,
				dim_inactive = false,
				lualine_bold = false,
			})
		end,
	},
}
