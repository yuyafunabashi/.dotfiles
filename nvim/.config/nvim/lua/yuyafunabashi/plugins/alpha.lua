return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    { "echasnovski/mini.icons", version = "*" },
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                    ██████                                    ]],
      [[                                ████▒▒▒▒▒▒████                                ]],
      [[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
      [[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
      [[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
      [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
      [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
      [[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
      [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
      [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
      [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
      [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
      [[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
      [[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
      [[                        ██      ██      ████      ████                        ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", "<cmd>ene <CR>"),
      dashboard.button("SPC e", " Open file explorer"),
      dashboard.button("SPC f f", "󰈞  Find file"),
      dashboard.button("SPC f g", "󰈞  Find git file"),
      dashboard.button("SPC f r", "󰊄  Recently opened files"),
      dashboard.button("SPC f l", "󰈬  Find word"),
      dashboard.button("q", "Quit", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
