
  vim.cmd([[
  let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

    set noshowmode
    set statusline+=%1*\ %{toupper(g:currentmode[mode()])}
    set statusline+=%1*\ %f 
    set statusline+=%{&modified?'*':''}
    set statusline+=\ 
    set statusline+=%= 
    set statusline+=%l\:\%c
    set statusline+=\ 

    hi user1 guifg=black guibg=#626262
  ]])

