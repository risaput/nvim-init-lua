return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
  -- ADDITIONAL PLUGINS -- 
  use "tomasiser/vim-code-dark"
  use "pangloss/vim-javascript"
  use "prabirshrestha/asyncomplete.vim"
  use "prabirshrestha/asyncomplete-emmet.vim"
  use "yami-beta/asyncomplete-omni.vim"
  use "tpope/vim-commentary"
  use "mattn/emmet-vim" 
  use 'kyazdani42/nvim-tree.lua'
  vim.g.nvim_tree_indent_markers = 1
  require'nvim-tree'.setup()

  -- ADDITIONAL SETTINGS --
  require('settings')
  require('plugins-setting')  
  require('statusline')
  require('keybindings')
  
  vim.cmd("set clipboard=unnamed")

end)
