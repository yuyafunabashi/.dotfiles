" Setup vim
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
set guicursor=
set scrolloff=8
set number
set numberwidth=4
set relativenumber

" Set indents
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" List whitespaces
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set showbreak=↪\

" Set backspace action
set backspace=indent,eol,start

" Disable error bells
set noerrorbells novisualbell t_vb=

" Install Plugins
call plug#begin()

" Theme
Plug 'ayu-theme/ayu-vim'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'

" Comments
Plug 'tpope/vim-commentary'

" Syntax highlighting
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'styled-components/vim-styled-components'

" Github Copilot
Plug 'github/copilot.vim'

call plug#end()

" Theme
set termguicolors
colorscheme tokyonight-storm

" Keybind remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprevious<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader><Tab><Tab> :set invlist<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

