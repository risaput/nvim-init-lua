
  vim.cmd([[

    set noshowmode
    set statusline+=\ %{mode()}\ 
    set statusline+=\|
    set statusline+=%2*\ %f 
    set statusline+=%{&modified?'*':''}
    set statusline+=\ 
    set statusline+=%= 
    set statusline+=%l\:\%c
    set statusline+=\ 

    hi user1 guifg=black guibg=#626262
    hi user2 guifg=#8B7866

  ]])

  -- tabline
  vim.opt.showtabline = 2
