return {
	{
		dir = "~/Projects/nvim_plugins/ci-commit-branch.nvim/",
		keys = {
			{
				"<leader>tm",
				"<cmd>lua require('ci-commit-branch').set_ci_commit_branch(vim.fn.input('Enter mesh version: '))<cr>",
				desc = "Update mesh version",
			},
		},
	},
}
