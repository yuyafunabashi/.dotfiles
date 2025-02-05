return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1

    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
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
      git = {
        ignore = false,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
    })

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

    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
    vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Show file in NvimTree" })
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })
  end,
}
