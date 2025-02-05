return {
  "tpope/vim-fugitive",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })

    local git_augroup = vim.api.nvim_create_augroup("YuyaFunabashi_Fugitive", {})

    local autocmd = vim.api.nvim_create_autocmd
    autocmd("BufWinEnter", {
      group = git_augroup,
      pattern = "*",
      callback = function()
        if vim.bo.ft ~= "fugitive" then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }

        opts.desc = "Git push"
        keymap.set("n", "<leader>gp", "<cmd>Git push<CR>", opts)

        opts.desc = "Git commit --amend"
        keymap.set("n", "<leader>gca", "<cmd>Git commit --amend<CR>", opts)

        opts.desc = "Git pull --rebase"
        keymap.set("n", "<leader>gplr", "<cmd>Git pull --rebase<CR>", opts)

        opts.desc = "Git push -u origin"
        keymap.set("n", "<leader>gpo", "<cmd>Git push -u origin<CR>", opts)
      end,
    })
  end,
}
