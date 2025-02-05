return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local config = require("telescope.config")
    local actions = require("telescope.actions")

    local vimgrep_arguments = { unpack(config.values.vimgrep_arguments) }
    table.insert(vimgrep_arguments, "--hidden")
    table.insert(vimgrep_arguments, "--glob")
    table.insert(vimgrep_arguments, "!**/.git/*")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-c>"] = actions.close,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-u>"] = false,
          },
        },
        vimgrep_arguments = vimgrep_arguments,
      },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          no_ignore = true,
          no_ignore_parent = true,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = false, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
    })

    telescope.load_extension("fzf")

    local builtin = require("telescope.builtin")
    local keymap = vim.keymap

    keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files" })
    keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    keymap.set("n", "<leader>fl", builtin.live_grep, { desc = "Telescope live grep" })
    keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Telescope recent files" })
    keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Telescope grep string under cursor" })
  end,
}
