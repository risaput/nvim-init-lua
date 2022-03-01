return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'dracula/vim'
  use 'kyazdani42/nvim-tree.lua'
  use 'pangloss/vim-javascript'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use "mattn/emmet-vim"
  use 'skywind3000/vim-auto-popmenu'
  use 'skywind3000/vim-dict'
  require'nvim-tree'.setup()

  require'mapping'
  require'setting'
  vim.cmd("set clipboard=unnamed")
end)
