local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	filters = {
		dotfiles = false,
	},
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ge", ":NvimTreeFindFile<CR>")

local function open_nvim_tree(data)
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
	local directory = vim.fn.isdirectory(data.file) == 1

	if not no_name and not directory then
		return
	end

	if directory then
		vim.cmd.cd(data.file)
	end

	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

local function auto_update_path()
	local buf = vim.api.nvim_get_current_buf()
	local bufname = vim.api.nvim_buf_get_name(buf)
	if vim.fn.isdirectory(bufname) or vim.fn.isfile(bufname) then
		require("nvim-tree.api").tree.find_file(vim.fn.expand("%:p"))
	end
end

vim.api.nvim_create_autocmd("BufEnter", { callback = auto_update_path })
