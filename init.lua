return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
  -- ADDITIONAL PLUGINS -- 
  use "tomasiser/vim-code-dark"
  use "scrooloose/nerdtree"
  use "pangloss/vim-javascript"
  use "prabirshrestha/asyncomplete.vim"
  use "prabirshrestha/asyncomplete-emmet.vim"
  use "yami-beta/asyncomplete-omni.vim"
  use "tpope/vim-commentary"
  use "mattn/emmet-vim"

  -- ADDITIONAL SETTINGS --
  require('settings')
  require('plugins-setting')  
  require('statusline')
  require('keybindings')
  
  vim.cmd("set clipboard=unnamed")

end)
