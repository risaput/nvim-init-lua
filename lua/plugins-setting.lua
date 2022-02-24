  -- Asyncomplete  
  vim.cmd([[

    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emmet#get_source_options({
    \ 'name': 'emmet',
    \ 'whitelist': ['html'],
    \ 'completor': function('asyncomplete#sources#emmet#completor'),
    \ }))

    autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
    \ 'name': 'omni',
    \ 'allowlist': ['*'],
    \ 'blocklist': ['c', 'cpp'],
    \ 'completor': function('asyncomplete#sources#omni#completor'),
    \ 'config': {
    \   'show_source_kind': 1,
    \ },
    \ }))

    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

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
