return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				dim_inactive_windows = "false",
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},

				styles = {
					italic = false,
					keywords = "bold",
				},
			})
			vim.cmd.colorscheme("rose-pine")

			-- Get rid of the background color
			vim.cmd.hi("Normal guibg=NONE ctermbg=NONE")
			vim.cmd.hi("Status guibg=NONE ctermbg=NONE")
			vim.cmd.hi("EndOFBuffer guibg=NONE ctermbg=NONE")
		end,
	},
}
