-- https://github.com/wbthomason/packer.nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'

  use 'tpope/vim-fugitive'

  use 'github/copilot.vim'

  -- FZF
  use {
    'junegunn/fzf',
    run = function() vim.fn['fzf#install']() end
  }
  use 'junegunn/fzf.vim'

  -- Syntax Highlighting
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'jparise/vim-graphql'
  use 'styled-components/vim-styled-components'

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
end)
