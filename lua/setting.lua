-- Colorscheme
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.dracula_italic = 0
vim.cmd("colorscheme dracula")
vim.cmd("hi Normal guibg=#191D2B")
vim.opt.omnifunc = "syntaxcomplete#Complete"

-- Tab
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- Indent
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.autoindent = true
vim.opt.smartindent = true

--Coopy to system clipboard
vim.cmd("set clipboard=unnamed")

-- UI
vim.opt.number = true
--vim.opt.cul = true
vim.opt.showtabline = 2

vim.cmd([[
  set statusline=
  set statusline+=%2*\ %{toupper(mode())}
  set statusline+=\ \|
  set statusline+=%2*\ %t
  set statusline+=%{&modified?'*':''}
  set statusline+=\ 
  set statusline+=%=  
  set statusline+=%l\:\%c
  set statusline+=\ 
  hi user1 guifg=#D8D7B8 guibg=#505050
  hi user2 guifg=#eeeeee guibg=#3F4661
]])

-- # PLUGIN SETTING ##№#########################
-- Autopop-menu
vim.cmd([[
  let g:apc_enable_ft = {'text':1, 'markdown':1, 'html':1, 'css':1, 'javascript':1, 'lua':1}
  set cpt=.,k,w,b
  set completeopt=menu,menuone,noselect
  set shortmess+=c
  let g:apc_cr_confirm = 1
]])

-- Emmet vim
vim.cmd([[
  let g:user_emmet_settings = {
  \  'variables': {'lang': 'en'},
  \  'html': {
  \    'default_attributes': {
  \      'option': {'value': v:null},
  \      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
  \    },
  \    'snippets': {
  \      'html:5': "<!DOCTYPE html>\n"
  \              ."<html lang=\"${lang}\">\n"
  \              ."<head>\n"
  \              ."\t<meta charset=\"${charset}\">\n"
  \              ."\t<title></title>\n"
  \              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
  \              ."</head>\n"
  \              ."<body>\n\t${child}|\n</body>\n"
  \              ."</html>",
  \    },
  \  },
  \}  
]])
