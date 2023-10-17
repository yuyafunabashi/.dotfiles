return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")
    local lualine_nightfly = require("lualine.themes.nightfly")

    local colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      black = "#000000",
    }

    lualine_nightfly.normal.a.bg = colors.blue
    lualine_nightfly.insert.a.bg = colors.green
    lualine_nightfly.visual.a.bg = colors.violet
    lualine_nightfly.command = {
      a = {
        gui = "bold",
        bg = colors.yellow,
        fg = colors.black,
      },
    }

    lualine.setup({
      options = {
        theme = lualine_nightfly,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
