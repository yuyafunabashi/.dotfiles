return {
  "jackMort/ChatGPT.nvim",
  enabled = false,
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "ChatGPTActAs", "ChatGPT", "ChatGPTEditWithInstructions" },
  opts = {},
  config = function()
    local chatgpt = require("chatgpt")

    chatgpt.setup({
      api_key_cmd = "op read op://private/OpenAI/credential --no-newline",
    })
  end,
}
