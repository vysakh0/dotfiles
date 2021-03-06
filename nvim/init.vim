"vime: nowrap fdm=marker
silent so ~/dotfiles/nvim/bundles.vim
"runtime ftplugin/man.vim

filetype plugin indent on " required!

"Change leader key, ecomma is easier than \
let mapleader=","

" Themes that seem to working in the fucking terminals are " seoul, jellybeans, gruvbox, vim-hybrid,
let g:seoul256_background = 236
colo seoul256
"colorscheme gruvbox
set background=dark

" SETTINGS/CONFIGURATIONS
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Basic
syntax enable

set number
set hidden
set clipboard+=unnamedplus
set backspace=indent,eol,start " Make backspace behave normally.
set noswapfile
set scrolloff=3    " setting the page on scrolling the screen
set history=1000
set title
set noerrorbells

"higlight cursor position
set cursorline

" Turn on tab completion for filenames, helptops, options et cetera
set wildmode=list:longest,full
set wildmenu
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app

" Wrapping and line breaks"
set  wrap
set linebreak

" Search related settings
set showmatch
set ignorecase
set hlsearch
set incsearch

"Persistent undo is like a local version control system that you don't have to
"manage. I think I will use this feature a lot.
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of set changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload


if has('conceal')
    set conceallevel=1
    set listchars+=conceal:Δ
endif

"set status line for status plugin to show in single file editing"
set laststatus=2
" Default Tabs & spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
"    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

set colorcolumn=80
" General Code Folding
set foldmethod=indent
set foldlevel=99

" Toggle spellcheck in normal mode
map <F5> :setlocal spell! spelllang=en_us<CR>


" CUSTOM MAPPINGS

"Recover FROM accidental undo
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>vv :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>az :e ~/dotfiles/zsh/aliases.zsh<CR>

nmap <silent> <leader>eb :e ~/dotfiles/nvim/bundles.vim<CR>
nmap <silent> <leader>ep :e ~/dotfiles/nvim/plugin_config.vim<CR>

"Vundle install"

"to create a new line cmd mode without going to insert
nmap <leader>k O<esc>k0
nmap <leader>j o<esc>j0

"Break a line into two and retain cursor position
nmap <leader>b i<cr><esc>k$

"I am going to use this hide option quite often ;) instead of using tabs,
"buffer is way cool :D
nnoremap <space>h :hide<cr>

"I am using wrap, so this is really handy :D
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$

"To pasuuuute content from system clipboard into Vim, I use this too often.
nnoremap<leader>p :set paste!<CR>

"Inherit Activercord base for model created with Rails vim
imap <c-b> <<space>ActiveRecord::Base<cr>

" unhighlight the search terms
nnoremap <leader><space> :noh <cr>

" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null

"map Y behave something similar to D, C, yank till the end from current
nnoremap Y y$

"ABBREVIATIONS

iabbr ime import Ember from 'ember';

cnoreabbrev Wq w
cnoreabbrev W w
cnoreabbrev WQ wq
" I should remember this :D if were to use encyption
cnoreabbrev X x
cnoreabbrev Q q

cnoreabbrev scp scp://@//home/ubuntu/

"FILE RELATED SETTINGS
source ~/dotfiles/nvim/auto_cmd.vim

"PLUGINS CONFIGURATION
source ~/dotfiles/nvim/plugin_config.vim


"I've already set auto saving my buffer. This key is the pain to my
"fingers. Not gonna use this anymore.
nnoremap <leader>w :w<cr>

nnoremap <leader>x :x<cr>
nnoremap <leader>q :q<cr>
nnoremap <space>q :qa<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>te :tabedit<space>
nnoremap <leader>ed :edit<space>
nnoremap <leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>


" Make arrowkey do something usefull, resize the viewports accordingly
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
cmap rx Rextract

"lcd
nnoremap <leader>ld :pwd<CR>
nnoremap <leader>lcp :lcd %:p:h<CR>
nnoremap <leader>lcd :lcd ~/

" currently selected text with default register
" without yanking it
nnoremap <leader>r "_diwP
vnoremap <leader>r "_dP

"nnoremap <leader>ct :Ctags<CR>
nnoremap <leader>ct :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"iabbr ed export default

"the block selector special
" current line mapping
nnoremap <space>vg <C-v>GE
nnoremap <space>ve <C-v>E
nnoremap <leader>gg gg=G''<CR>

function! RemoveComments()
    :g_\v(^|^\s+)#_d
    :%!cat -s
endfunction
"Delete comments in ruby or elixir file
nnoremap <space>dc :call RemoveComments()<CR>

nnoremap <leader>v :vs<CR>

" Markdown headings
nnoremap <leader>1 m`yypVr=``
nnoremap <leader>2 m`yypVr-``
nnoremap <leader>3 m`^i### <esc>``4l
nnoremap <leader>4 m`^i#### <esc>``5l
nnoremap <leader>5 m`^i##### <esc>``6l

" Ascii doctor headings
nnoremap <leader>6 m`^i= <esc>``2l
nnoremap <leader>7 m`^i== <esc>``3l
nnoremap <leader>8 m`^i=== <esc>``4l
nnoremap <leader>9 m`^i==== <esc>``5l
nnoremap <leader>0 m`^i===== <esc>``6l
set autoread "sets it to reload files on change.
au CursorHold,CursorHoldI * checktime " The problem is that Vim doesn't
"actually check changes. So this  makes it check periodically.
"
"
function! Jsonapi(from)
    echo a:from
    exec ':%s/"'. a:from . '" => \(\w\+\)/"data" => %{"attributes" => \1}/g'
endfunction
function! Testjsonapi(from)
    echo a:from
    exec ':%s/'. a:from . ': \(.*\)$/data: %{attributes: \1}/g'
endfunction
cnoreabbrev aa :call Jsonapi
cnoreabbrev ba :call Testjsonapi

nmap <Leader>ij yiwoconsole.log('<c-r>"', <c-r>");<Esc>^
nmap <Leader>ie yiwoIO.puts("--------------<c-r>"--------------"); IO.inspect(<c-r>");<Esc>^
