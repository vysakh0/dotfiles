call plug#begin('~/.vim/plugged')

""Junegunn's awesomeness
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdcommenter'
Plug 'voldikss/vim-floaterm'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"coc-pairs
"cocsnippets plugin depends on this
Plug 'honza/vim-snippets'

Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'
call plug#end()
