return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
	
  use 'dracula/vim'
  use 'karb94/neoscroll.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'pangloss/vim-javascript'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use "mattn/emmet-vim"
  use 'skywind3000/vim-auto-popmenu'
  use 'skywind3000/vim-dict'
  require'nvim-tree'.setup()

  vim.cmd("set mouse= ")
  require'mapping'
  require'setting'

end)
