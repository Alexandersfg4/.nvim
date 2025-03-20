local is_always_hidden = {}
is_always_hidden[".idea"] = true
is_always_hidden[".git"] = true
is_always_hidden["../"] = true
is_always_hidden[".gitattributes"] = true

return {
	{
		"stevearc/oil.nvim",
		opts = {
			default_file_explorer = true,
			-- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
			skip_confirm_for_simple_edits = false,
			lsp_file_methods = {
				-- Enable or disable LSP file operations
				enabled = true,
				-- Time to wait for LSP file operations to complete before skipping
				timeout_ms = 2000,
				-- Set to true to autosave buffers that are updated with LSP willRenameFiles
				-- Set to "unmodified" to only save unmodified buffers
				autosave_changes = true,
			},
			-- Set to false to disable all of the above keymaps
			use_default_keymaps = true,
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
				-- This function defines what will never be shown, even when `show_hidden` is set
				is_always_hidden = function(name, bufnr)
					if is_always_hidden[name] ~= nil then
						return true
					end
					return false
				end,
				-- Sort file names with numbers in a more intuitive order for humans.
				-- Can be "fast", true, or false. "fast" will turn it off for large directories.
				natural_order = "fast",
				-- Sort file and directory names case insensitive
				case_insensitive = false,
				sort = {
					-- sort order can be "asc" or "desc"
					-- see :help oil-columns to see which columns are sortable
					{ "type", "asc" },
					{ "name", "asc" },
				},
			},
		},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
		keys = {
			{ "\\", "<cmd>Oil<cr>", desc = "Open parent directory" },
		},
	},
}
