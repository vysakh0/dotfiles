"vim: nowrap fdm=marker
source ~/dotfiles/bundles.vim
"runtime ftplugin/man.vim

filetype plugin indent on " required!

"Change leader key, comma is easier than \
let mapleader=","

if !has('gui_running')
    set t_Co=256
endif

" SETTINGS/CONFIGURATIONS
set nocompatible

set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" vim color theme
set background=dark
if !has("gui_running")
    "colorscheme chance-of-storm
    colorscheme solarized
else
    colorscheme solarized
endif

" Basic
syntax enable

set number
set hidden
set clipboard=unnamed
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
nnoremap / /\v
vnoremap / /\v

"Persistent undo is like a local version control system that you don't have to
"manage. I think I will use this feature a lot.
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
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

" General Code Folding
set foldmethod=indent
set foldlevel=99

" Toggle spellcheck in normal mode
:map <F5> :setlocal spell! spelllang=en_us<CR>


" CUSTOM MAPPINGS

"Recover FROM accidental undo
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>eb :e ~/dotfiles/bundles.vim<CR>
nmap <silent> <leader>ep :e ~/dotfiles/plugin_config.vim<CR>

"Vundle install"
nmap <silent> <leader>bi :so $MYVIMRC<CR>:BundleInstall <CR>

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

"To paste content from system clipboard into Vim, I use this too often.
nnoremap<leader>p :set paste!<CR>

"Inherit Activercord base for model created with Rails vim
imap <c-b> <<space>ActiveRecord::Base<cr>

" unhighlight the search terms
nnoremap <leader><space> :noh <cr>

" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null

"map Y behave something similar to D, C, yank till the end from current
nnoremap Y y$

"Map tab all, split panes into tabs
nnoremap <leader>tb :tab ball<CR>

"Make buffer into vertical panes
nnoremap <leader>vb :vert ba<CR>

"Let me toggle the set paste thing, which i more often, I am a script kiddy ;)
set pastetoggle=<F6>

"ABBREVIATIONS

iabbr lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.<CR>Vestibulum bibendum hendrerit ante.<CR>Phasellus vitae enim id erat fringilla fermentum.<CR>Pellentesque tellus. Cras eros magna, pretium ac, tincidunt id, tincidunt eget, mi.<CR>Fusce tristique sollicitudin eros. Nam augue nisi, volutpat non, cursus a, aliquam ac, magna.<CR>Sed rhoncus, ipsum vitae semper ultrices, ante nunc faucibus nunc, sed iaculis elit metus condimentum turpis.<CR>Suspendisse suscipit. Nulla eget nulla. Aliquam varius sem quis tortor. Proin eu dolor a lacus lobortis luctus.<CR>Phasellus interdum. Maecenas quis sem. Nulla facilisi.



"These abbreviations is my savior :D

iabbr rma require 'minitest/autorun'
cnoreabbrev Wq w
cnoreabbrev W w
cnoreabbrev WQ wq
" I should remember this :D if were to use encyption
cnoreabbrev X x
cnoreabbrev Q q


"FILE RELATED SETTINGS
source ~/dotfiles/auto_cmd.vim

"PLUGINS CONFIGURATION
source ~/dotfiles/plugin_config.vim
"buffer statusline
let g:bufferline_echo=0
set statusline=%{bufferline#generate_string()}

"ex mode movement
vnoremap <leader>m  :m
vnoremap <leader>t  :t

nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>qa :q<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>te :tabedit<space>
nnoremap <leader>e :edit<space>
nnoremap <leader>s :%s/

" Make arrowkey do something usefull, resize the viewports accordingly
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

"save session using startify when closing all tabs"
:"nnoremap <leader>qa :SSave<CR><CR>y<CR><esc>:qa<CR>

"cnoreabbrev qa :SSave<CR><CR>y<CR><esc>:qa<CR>

"nnoremap <C-j> :m .+1<CR>==
"nnoremap <C-k> :m .-2<CR>==

""Insert mode
"inoremap <C-k> <ESC>:m .-2<CR>==gi
"inoremap <C-j> <ESC>:m .+1<CR>==gi

"" Visual mode
"vnoremap <C-j> :m '>+1<CR>gv=gv
"vnoremap <C-k> :m '<-2<CR>gv=gv"
