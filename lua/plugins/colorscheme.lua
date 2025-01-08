-- default colorscheme
-- vim.cmd.colorscheme 'witch'

return {
	-- themes plugins here
	{
		"sontungexpt/witch",
		priority = 1000,
		lazy = false,
		config = function(_, opts)
			require("witch").setup(opts)
		end,
	},
}
