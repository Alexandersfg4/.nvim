-- clear search by pressing Esc
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.cmd.exit, { desc = '[Q]uite from nvim' })
vim.keymap.set('n', '<leader>w', vim.cmd.update, { desc = '[W]rite changes to file' })
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- Exit terminal input mode
vim.keymap.set('i', 'jk', '<Esc><Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('t', 'jk', '<Esc><Esc>', { desc = 'Exit terminal mode' })
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- LSP keymaps
-- NOTE: Remember that Lua is a real programming language, and as such it is possible
-- to define small helper and utility functions so you don't have to repeat yourself.
--
-- In this case, we create a function that lets us more easily define mappings specific
-- for LSP related items. It sets the mode, buffer and description for us each time.
local map_lsp = function(keys, func, desc)
	vim.keymap.set('n', keys, func, { desc = 'LSP: ' .. desc })
end
-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
map_lsp('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
map_lsp('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
-- Opens a popup that displays documentation about the word under your cursor
--  See `:help K` for why this keymap.
map_lsp('K', vim.lsp.buf.hover, 'Hover Documentation')
-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header.
map_lsp('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

return {
	-- WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			spec = {
				{ '<leader>s', group = '[S]earch' },
				{ '<leader>r', group = '[R]efactor' },
				{ '<leader>c', group = '[C]ode' },
				{ '<leader>g', group = '[G]it' },
			},
			sort = { "alphanum" },
		},
	},
}
