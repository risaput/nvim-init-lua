function map(mode, shortcut, command) 
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end


-- Neo scrolling
require('neoscroll').setup({
    -- Set any options as needed
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-j>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
t['<C-k>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}}

require('neoscroll.config').set_mappings(t)

--shortcut for nvim-tree
nmap("<C-b>", ":NvimTreeToggle<CR>")

-- Shortcut for move to end of line
nmap("0", "$")
nmap("8", "0")

--shortcut for move line to up & down
nmap("<A-Up>", ":m-2<CR>")
nmap("<A-Down>", ":m+<CR>")

--shortcut for block tab
nmap("<C-Right>", ":'<,'>norm i  <CR>")
nmap("<C-Left>", ":'<,'>norm x<CR>")

--shortcut for open newtab
nmap("<C-n>", ":tabnew ")

--shortcut for search & replace
nmap("<C-s>", ":%s/lines/replacelines/g")
