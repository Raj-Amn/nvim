return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = false,
			skip_confirm_for_simple_edits = false,
			prompt_save_on_select_new_entry = true,
			view_options = {
				show_hidden = true,
			},
			vim.keymap.set("n", "<space>e", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
			vim.keymap.set("n", "<space>-", "<CMD>Oil--float<CR>", { desc = "Open parent directory" }),
		})
	end,
}
