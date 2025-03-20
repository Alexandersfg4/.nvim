return {
	-- themes plugins here
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin-macchiato]])
		end,
	},
	{
		"sunjon/shade.nvim",
		opts = {
			overlay_opacity = 50,
			opacity_step = 1,
			keys = {
				brightness_up = "<C-Up>",
				brightness_down = "<C-Down>",
				toggle = "<Leader>s",
			},
		},
	},
	-- {
	-- 	"sontungexpt/witch",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function(_, opts)
	-- 		require("witch").setup(opts)
	-- 	end,
	-- 	opts = {
	-- 		theme = {
	-- 			-- dark/light
	-- 			style = "dark",
	-- 		},
	-- 	},
	-- },
}
