"vim: nowrap fdm=marker
source ~/dotfiles/bundles.vim
"runtime ftplugin/man.vim

filetype plugin indent on " required!

"Change leader key, comma is easier than \
let mapleader=","

" Configurations
""""""""""""""""
set background=dark
set nocompatible

"Probably i don't need this status line made using fugitive plugin, now there
"is airline ;)
"set statusline=\[%t%m]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [LINE=%04l,COL=%04v]\ %{fugitive#statusline()}
set laststatus=2
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Save when losing focus
set autowriteall " Auto-save files when switching buffers or leaving vim.
au FocusLost * silent! :wa
au TabLeave * silent! :wa

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

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

set scrolloff=9999

" Turnon tab completion for filenames, helptops, options et cetera
set wildmode=list:longest,full
set wildmenu
"set ffs=unix,dos,mac "Default file types
set  wrap        " wrap lines ;)
set linebreak
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
"  case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set title                " change the terminal's title
set noerrorbells         " don't beep

"Persistent undo is like a local version control system that you don't have to
"manage. I think I will use this feature a lot.

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

nnoremap <F8> :UndotreeToggle<cr>


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
""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99


" Highlight VCS conflict markers
""""""""""""""""""""""""""""""""
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" I CAN HAZ NORMAL REGEXES?
"""""""""""""""""""""""""""
nnoremap / /\v
vnoremap / /\v


" Toggle spellcheck in normal mode
:map <F5> :setlocal spell! spelllang=en_us<CR>

" Ruby Configurations
"""""""""""""""""""""
autocmd filetype ruby setlocal noexpandtab shiftwidth=2 tabstop=2

" HTML configurations
"""""""""""""""""""""
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab

" Python configurations
"""""""""""""""""""""""
autocmd FileType python setlocal shiftwidth=4 expandtab tabstop=4 softtabstop=4
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Coffeescript configurations
"""""""""""""""""""""""""""""
au BufNewFile,BufReadPost *.coffee setlocal foldmethod=indent
au BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2 expandtab

" Javascript configurations
"""""""""""""""""""""""""""
au BufNewFile,BufReadPost *.js setlocal shiftwidth=2 expandtab


" Make sure we hilight extra whitespace in the most annoying way possible.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" Custom mappings
""""""""""""""""""

" Genral
nnoremap <leader><space> :noh <cr>
" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null


" Plugin configurations
"""""""""""""""""""""""

" TagBar
nmap <F2> :TagbarToggle<CR>
let g:tagbar_type_ruby = {
            \ 'kinds' : [
            \ 'm:modules',
            \ 'c:classes',
            \ 'd:describes',
            \ 'C:contexts',
            \ 'v:variables',
            \ 'f:methods',
            \ 'F:singleton methods'
            \ ]
            \ }

"mult cursor  plugin
let g:multi_cursor_next_key='<C-m>'

" This is not working in most case or has use, so lemme something else
nmap <buffer> <F7> <Plug>(xmpfilter-run)
xmap <buffer> <F7> <Plug>(xmpfilter-run)
imap <buffer> <F7> <Plug>(xmpfilter-run)

nmap <buffer> <F6> <Plug>(xmpfilter-mark)
xmap <buffer> <F6> <Plug>(xmpfilter-mark)
imap <buffer> <F6> <Plug>(xmpfilter-mark)

"Let me toggle the set paste thing, which i more often, I am a script kiddy ;)
set pastetoggle=<F6>


"NERDTree toggle
noremap <F3> :NERDTreeToggle<CR>

"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>
"abbreviations
abbreviate lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.<CR>Vestibulum bibendum hendrerit ante.<CR>Phasellus vitae enim id erat fringilla fermentum.<CR>Pellentesque tellus. Cras eros magna, pretium ac, tincidunt id, tincidunt eget, mi.<CR>Fusce tristique sollicitudin eros. Nam augue nisi, volutpat non, cursus a, aliquam ac, magna.<CR>Sed rhoncus, ipsum vitae semper ultrices, ante nunc faucibus nunc, sed iaculis elit metus condimentum turpis.<CR>Suspendisse suscipit. Nulla eget nulla. Aliquam varius sem quis tortor. Proin eu dolor a lacus lobortis luctus.<CR>Phasellus interdum. Maecenas quis sem. Nulla facilisi.


"Unite vim
"nnoremap <C-p> :U :nite file_rec<cr>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
noremap <space>r :<C-u>Unite -start-insert file_rec<CR>
nnoremap <space>a :Unite file_rec -auto-preview<cr>
nnoremap <space>/ :Unite grep:.<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <space>m :<C-u>Unite -start-insert file_mru<CR>

"Ulti
"let g:UltiSnipsExpandTrigger = '<c-l>'
"let g:UltiSnipsJumpForwardTrigger = '<c-j>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

"Snipmates
":imap <C-J> <Plug>snipMateNextOrTrigger
":smap <C-J> <Plug>snipMateNextOrTrigger

"Recover from accidental undo
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


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

"These abbreviations is my savior :D
cnoreabbrev Wq w
cnoreabbrev W w
cnoreabbrev WQ wq
cnoreabbrev X x  "I should remember this :D if were to show demo on encyption 
cnoreabbrev Q q

" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"To paste content from system clipboard into Vim, I use this too often.
nnoremap<leader>p :set paste!<CR>

"Inherit Activercord base for model created with Rails vim
imap <c-b> <<space>ActiveRecord::Base<cr>

