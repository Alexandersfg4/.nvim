return {
	{
		dir = "~/Projects/nvim_plugins/mesh-version.nvim/",
		keys = {
			{ "<leader>tm", "<cmd>lua require('mesh-version').set_mesh_version(vim.fn.input('Enter mesh version: '))<cr>", desc = "Update mesh version" },
		},
	},
}
