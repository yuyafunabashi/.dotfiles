vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Write file" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

keymap.set("n", "ss", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close split" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
keymap.set("n", "n", "nzzzv", { desc = "Move to next match" })
keymap.set("n", "N", "Nzzzv", { desc = "Move to previous match" })

keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over selected text" })

keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to clipboard" })
keymap.set("n", "<leader>gy", 'gg"+yG', { desc = "Copy all to clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to clipboard" })

keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without buffer" })

keymap.set("i", "<C-c>", "<Esc>", { desc = "Escape" })

keymap.set("n", "Q", "<Nop>")

keymap.set("n", "<C-k>", "<cmd>cNext<CR>zz", { desc = "Next quickfix" })
keymap.set("n", "<C-j>", "<cmd>cprevious<CR>zz", { desc = "Previous quickfix" })
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next location" })
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous location" })

keymap.set(
  "n",
  "<leader>sw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Substitute word under cursor" }
)
keymap.set("n", "<leader>ex", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make executable" })
keymap.set(
  { "n", "v", "i" },
  "<C-f>",
  "<cmd>silent !tmux neww tmux-sessionizer<CR>",
  { silent = true, desc = "Open tmux-sessionizer" }
)

keymap.set(
  "n",
  "<leader><leader>",
  "<cmd>so ~/.config/nvim/init.lua<CR><cmd>lua print('Reloaded nvim config')<CR>",
  { desc = "Reload config" }
)

keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap.set("n", "<leader>ed", vim.diagnostic.open_float, { desc = "Show diagnistic error messages" })
