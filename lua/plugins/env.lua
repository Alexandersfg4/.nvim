return {
	{
		"Alexandersfg4/environment.nvim",
		opts = {
			variables = {
				CI_COMMIT_BRANCH = "master",
			},
		},
		keys = {
			{
				"<leader>tm",
				"<cmd>lua local branch=vim.fn.input('Enter CI_COMMIT_BRANCH: '); vim.cmd('EnvSet CI_COMMIT_BRANCH=' .. branch); vim.print(' Success, CI_COMMIT_BRANCH=' .. branch)<cr>",
				desc = "Change mesh version(CI_COMMIT_BRANCH)",
			},
		},
	},
}
