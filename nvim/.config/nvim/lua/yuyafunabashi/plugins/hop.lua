return {
  "smoka7/hop.nvim",
  event = "VeryLazy",
  config = function()
    local keymap = vim.keymap
    local hop = require("hop")

    hop.setup({
      case_insensitive = true,
      char2_fallback_key = "<CR>",
      quit_key = "<C-c>",
    })

    keymap.set({ "n", "v", "o" }, "ff", "", {
      silent = true,
      noremap = true,
      callback = function()
        hop.hint_char2()
      end,
      desc = "nvim-hop char2",
    })

    keymap.set({ "n", "v", "o" }, "fp", "", {
      silent = true,
      noremap = true,
      callback = function()
        hop.hint_patterns()
      end,
      desc = "nvim-hop char2",
    })

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        vim.cmd([[
      hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff
      hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff
      hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff
    ]])
      end,
    })
  end,
}
