return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    local keymap = vim.keymap

    keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, desc = "Accept completion" })

    keymap.set("i", "<C-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, desc = "Cycle completions" })

    keymap.set("i", "<C-'>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, desc = "Cycle completions" })

    keymap.set("i", "<C-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, desc = "Clear completions" })
  end,
}
