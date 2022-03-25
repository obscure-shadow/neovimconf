"Ignore python2 provider
let g:loaded_python_provider = 0

"Set nicer tab spacing
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"set line numbers
set number

"Init pluggins
call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-telescope/telescope.nvim'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

call plug#end()
