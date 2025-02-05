return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    messages = {
      view_search = false,
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = false,
    },
    commands = {
      all = {
        view = "split",
        opts = { enter = true, format = "details" },
        filter = {},
      },
    },
    views = {
      mini = {
        zindex = 100,
        win_options = { winblend = 0 },
      },
    },
    routes = {
      { view = "notify", filter = { event = "msg_showmode", find = "recording" } },
    },
    popupmenu = {
      enabled = true, -- enables the Noice popupmenu UI
      backend = "nui", -- backend to use to show regular cmdline completions
      kind_icons = {}, -- set to `false` to disable icons
    },
  },
  keys = {
    {
      "<leader>nl",
      function()
        require("noice").cmd("last")
      end,
      desc = "Noice Last Message",
    },
    {
      "<leader>nh",
      function()
        require("noice").cmd("history")
      end,
      desc = "Noice History",
    },
    {
      "<leader>nht",
      function()
        require("noice").cmd("telescope")
      end,
      desc = "Noice History Telescope",
    },
    {
      "<leader>na",
      function()
        require("noice").cmd("all")
      end,
      desc = "Noice All",
    },
    {
      "<leader>nd",
      function()
        require("noice").cmd("dismiss")
      end,
      desc = "Noice Dismiss",
    },
  },
}
