"vim: nowrap fdm=marker
source ~/dotfiles/bundles.vim
"runtime ftplugin/man.vim

filetype plugin indent on " required!

"Change leader key, comma is easier than \
let mapleader=","


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

set number        " always show line numbers
set hidden        " Allow un-saved buffers in background
set clipboard=unnamed " Share system clipboard but this is not working for me!
set backspace=indent,eol,start " Make backspace behave normally.
set noswapfile
set scrolloff=3    " setting the page on scrolling the screen
set history=1000         " remember more commands and search history
set title                " change the terminal's title
set noerrorbells         " don't beep


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
set  wrap        " wrap lines ;)
set linebreak

" Search related settings
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
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

" Default Tabs & spaces
set tabstop=4     " a tab is four spaces
set shiftwidth=4  " number of spaces to use for autoindenting
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

"Recover from accidental undo
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>bv :e ~/dotfiles/bundles.vim<CR>

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


" arrow keys are unacceptable
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

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

"make a word caps, handy when using constants, dont use shift ;)
nnoremap <C-u> <esc>g~iw

"mappings suited to my current project
nnoremap <leader>1 :,$norm A,18,49<CR>
nnoremap <leader>2 :,$norm A,50,54<CR>
nnoremap <leader>3 :,$norm A,55,64<CR>
nnoremap <leader>4 :,$norm A,65,69<CR>
nnoremap <leader>5 :,$norm A,70,74<CR>
nnoremap <leader>6 :,$norm A,75,79<CR>
nnoremap <leader>7 :,$norm A,80,84<CR>
nnoremap <leader>8 :,$norm A,18,40<CR>
nnoremap <leader>9 :,$norm A,41,45<CR>
nnoremap <leader>0 :,$norm A,46,55<CR>

nnoremap <leader>nc :.,$norm ICouple,<CR>
nnoremap <leader>ni :.,$norm IIndividual,<CR>
nnoremap <leader>nf :.,$norm IFamily,<CR>

"map jj to escape to go to normal mode
inoremap jj <Esc>

"ABBREVIATIONS

iabbr lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.<CR>Vestibulum bibendum hendrerit ante.<CR>Phasellus vitae enim id erat fringilla fermentum.<CR>Pellentesque tellus. Cras eros magna, pretium ac, tincidunt id, tincidunt eget, mi.<CR>Fusce tristique sollicitudin eros. Nam augue nisi, volutpat non, cursus a, aliquam ac, magna.<CR>Sed rhoncus, ipsum vitae semper ultrices, ante nunc faucibus nunc, sed iaculis elit metus condimentum turpis.<CR>Suspendisse suscipit. Nulla eget nulla. Aliquam varius sem quis tortor. Proin eu dolor a lacus lobortis luctus.<CR>Phasellus interdum. Maecenas quis sem. Nulla facilisi.

"These abbreviations is my savior :D
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

