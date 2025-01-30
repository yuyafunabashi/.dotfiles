local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true

opt.updatetime = 50

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "100"

opt.backspace = "indent,eol,start"

opt.splitright = true
opt.splitbelow = true
